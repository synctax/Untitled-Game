#pragma once

#include <glm/glm.hpp>

#include "Component.hpp"

class Camera : public Component {
private:
    glm::mat4 projectionMatrix;
    glm::mat4 viewMatrix;
    glm::vec3 viewDirection;
    float FOV;

    float width, height;
public:
    Camera(float _width, float _height);

    void setFOV(float fov);
    void updateAspect(float _width, float _height);
    
    virtual void start(); 
    virtual void lateUpdate();

    inline glm::vec3 getViewDirection() const {return viewDirection;};
    inline glm::mat4 getProjectionMatrix() const {return projectionMatrix;};
    inline glm::mat4 getViewMatrix() const {return viewMatrix;};
private:
    void calculateMatrices();
};
