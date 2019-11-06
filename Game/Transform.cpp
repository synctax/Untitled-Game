#include "Transform.hpp"

#include <glm/gtc/matrix_transform.hpp>

#include <cmath>

Transform::Transform() : Component(std::string("transform")) {
    position = glm::vec3(0, 0, 0);
    rotation = glm::vec3(0, 0, 0);
    size = glm::vec3(1, 1, 1);
}

void Transform::translate(float x, float y, float z){
    position += glm::vec3(x, y, z); 
}

void Transform::rotate(float x, float y, float z){
    rotation += glm::vec3(x, y, z);
}

void Transform::scale(float x, float y, float z){
    size *= glm::vec3(x, y, z);
} 

void Transform::setPosition(float x, float y, float z){
    position = glm::vec3(x, y, z);
}

void Transform::setRotation(float x, float y, float z){
    rotation = glm::vec3(x, y, z);
}

void Transform::setScale(float x, float y, float z){
    size = glm::vec3(x, y, z);
}

glm::mat4 Transform::calcModelMatrix(){

    glm::mat4 modelMatrix = glm::mat4(1.0); 
    modelMatrix = glm::translate(modelMatrix, position);
    modelMatrix = glm::scale(modelMatrix, size);
     
    modelMatrix = glm::rotate(modelMatrix, rotation.x, glm::vec3(1, 0, 0));
    modelMatrix = glm::rotate(modelMatrix, rotation.y, glm::vec3(0, 1, 0));
    modelMatrix = glm::rotate(modelMatrix, rotation.z, glm::vec3(0, 0, 1));
    
    if(object->getParent() != NULL){
   	 return ((Transform*)object->getParent()->getComponent("transform"))->calcModelMatrix() * modelMatrix;
    } else {
         return modelMatrix;
    }
}
