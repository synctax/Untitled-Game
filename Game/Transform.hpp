#pragma once

#include "Component.hpp"

#include <glm/glm.hpp>
#include <glm/gtc/quaternion.hpp>
//#define GLM_ENABLE_EXPERIMENTAL
//#include <glm/gtx/quaternion.hpp>

class Transform : public Component {
public:

    Transform();
 
    void translate(float x, float y, float z);
    void rotate(float x, float y, float z);
    void scale(float x, float y, float z);
     
    void setPosition(float x, float y, float z);
    void setRotation(float x, float y, float z);
    void setScale(float x, float y, float z);
    
    glm::vec3 getPosition(){return position;}
    glm::quat getRotation(){return rotation;}
    glm::vec3 getScale(){return size;}
    
    void lookAt(float x, float y, float z);

    glm::vec3 calcGlobalPosition();
    glm::quat calcGlobalRotation();
    glm::vec3 calcGlobalScale(); 

    glm::mat4 calcModelMatrix();
private:
    glm::vec3 position;
    glm::quat rotation;
    glm::vec3 size;
};
