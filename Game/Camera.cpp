#include "Camera.hpp"

Camera::Camera(float x, float y, float z, float vAngle, float hAngle, float _width, float _height){
    position = glm::vec3(x,y,z);
    FOV = 90;
    viewDirection = glm::vec3(cos(vAngle) * sin(hAngle),
                              sin(vAngle),
                              cos(vAngle) * cos(hAngle));
    width = _width; height = _height;
    calculateProjectionMatrix();
}

void Camera::setFOV(float fov){
    FOV = fov;
    calculateProjectionMatrix();
}

void Camera::updateAspect(float _width, float _height){
    width = _width;
    height = _height;
    calculateProjectionMatrix();	
}

void Camera::translate(float x, float y, float z){
    position += glm::vec3(x,y,z);
    calculateProjectionMatrix();
}

void Camera::setPosition(float x, float y, float z){
    position = glm::vec3(x,y,z);
    calculateProjectionMatrix();
}

void Camera::rotate(float vAngle, float hAngle){
    glm::mat4 rMat = glm::rotate(glm::mat4(1),vAngle,glm::vec3(1,0,0));
    rMat = glm::rotate(rMat,hAngle,glm::vec3(0,1,0));
    viewDirection = glm::vec3(rMat*glm::vec4(viewDirection,1));
    calculateProjectionMatrix();
}

void Camera::lookAt(float x, float y, float z){
    viewDirection = glm::normalize(glm::vec3(x,y,z)-position);
    calculateProjectionMatrix();
}

void Camera::calculateProjectionMatrix(){
    glm::mat4 vMatrix = glm::lookAt(position,
                                    position+viewDirection,
                                    glm::vec3(0,1,0));

    glm::mat4 pMatrix = glm::perspective(glm::radians(FOV),
                                         width / height,
                                         0.1f,
                                         100.0f);
    projectionMatrix = pMatrix*vMatrix;
}
