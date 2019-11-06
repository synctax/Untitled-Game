#pragma once

#include "Component.hpp"

#include <glm/glm.hpp>

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
    glm::vec3 getRotation(){return rotation;}
    glm::vec3 getScale(){return size;}

    /* May want to implement these function later
    glm::vec3 calcGlobalPosition();
    glm::vec3 calcGlobalRotation();
    glm::vec3 calcGlobalScale();
    */

    glm::mat4 calcModelMatrix();
private:
    glm::vec3 position;
    glm::vec3 rotation;
    glm::vec3 size;
};
