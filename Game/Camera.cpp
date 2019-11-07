#include "Camera.hpp"

#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/gtc/matrix_transform.hpp>
#include <cmath>

#include "Transform.hpp"

Camera::Camera(float _width, float _height) 
 : Component(std::string("camera")) {
    FOV = 90;
    width = _width; 
    height = _height;
}

void Camera::setFOV(float fov){
    FOV = fov;
    calculateMatrices();
}

void Camera::updateAspect(float _width, float _height){
    width = _width;
    height = _height;
    calculateMatrices();
}

void Camera::start(){
    lateUpdate();
}

void Camera::lateUpdate(){
   glm::quat rotation = ((Transform*)object->getComponent("transform"))->calcGlobalRotation();
   glm::mat4 rMat = glm::mat4_cast(rotation); 
   std::cout << "View Direction: " << viewDirection.x << ", " << viewDirection.y << ", " << viewDirection.z << std::endl;
    
   viewDirection = glm::vec3(rMat*glm::vec4(0, 0, 1, 0));
   glm::vec3 rot = glm::eulerAngles(rotation);
   std::cout << "Rotation" << rot.x << ", " << rot.y << ", " << rot.z << std::endl; 
   calculateMatrices(); 
}

void Camera::calculateMatrices(){
    glm::vec3 position = ((Transform*)object->getComponent("transform"))->calcGlobalPosition();
    std::cout << "Position: " << position.x << ", " << position.y << ", " << position.z << std::endl;
    viewMatrix = glm::lookAt(position,
                                    position+viewDirection,
                                    glm::vec3(0,1,0));

    projectionMatrix = glm::perspective(glm::radians(FOV),
                                         width / height,
                                         0.1f,
                                         100.0f);
}
