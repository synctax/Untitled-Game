#include "Transform.hpp"

#include <glm/gtc/matrix_transform.hpp>

#include <cmath>
#include <iostream>

Transform::Transform() : Component(std::string("transform")) {
    position = glm::vec3(0, 0, 0);
    rotation = glm::vec3(0, 0, 0);
    size = glm::vec3(1, 1, 1);
}

void Transform::translate(float x, float y, float z){
    position += glm::vec3(x, y, z); 
}

void Transform::rotate(float x, float y, float z){
    rotation *= glm::quat(glm::vec3(x, y, z)); 
    //rotation += glm::vec3(x, y, z);
}

void Transform::scale(float x, float y, float z){
    size *= glm::vec3(x, y, z);
} 

void Transform::setPosition(float x, float y, float z){
    position = glm::vec3(x, y, z);
}

void Transform::setRotation(float x, float y, float z){
    rotation = glm::quat(glm::vec3(x, y, z));
}

void Transform::setScale(float x, float y, float z){
    size = glm::vec3(x, y, z);
}

glm::vec3 Transform::calcGlobalPosition(){
    return glm::vec3(calcModelMatrix()*glm::vec4(0, 0, 0, 1));
}

glm::quat Transform::calcGlobalRotation(){
    if(object->getParent()){
        return rotation * ((Transform*)object->getParent()->getComponent("transform"))->calcGlobalRotation();
    } else {
        return rotation;
    }
}

glm::vec3 Transform::calcGlobalScale(){
    if(object->getParent()){
        return size * ((Transform*)object->getParent()->getComponent("transform"))->calcGlobalScale();
    } else {
        return size;
    }
}

glm::mat4 Transform::calcModelMatrix(){

    glm::mat4 modelMatrix = glm::mat4(1.0);
    glm::mat4 transMat  = glm::translate(glm::mat4(1.0), position);
    glm::mat4 rotMat = glm::mat4_cast(rotation);
    glm::mat4 scaleMat = glm::scale(glm::mat4(1.0), size);
    modelMatrix = transMat * rotMat * scaleMat;

    if(object->getParent() != NULL){
   	 return ((Transform*)object->getParent()->getComponent("transform"))->calcModelMatrix() * modelMatrix;
    } else {
         return modelMatrix;
    }
}
