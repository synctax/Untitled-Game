#pragma once

#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <math.h>

class Camera{
private:
    glm::mat4 projectionMatrix;
    glm::mat4 viewMatrix;
    glm::vec3 position;
    glm::vec3 viewDirection;
    float FOV;

    float width, height;
public:
    Camera(float x, float y, float z, float vAngle, float hAngle, float _width, float _height);

    void setFOV(float fov);
    void updateAspect(float _width, float _height);

    void translate(float x, float y, float z);
    void setPosition(float x, float y, float z);

    void rotate(float vAngle, float hAngle);
    void lookAt(float x, float y, float z);

    inline glm::vec3 getViewDirection() const {return viewDirection;};
    inline glm::mat4 getProjectionMatrix() const {return projectionMatrix;};
    inline glm::mat4 getViewMatrix() const {return viewMatrix;};
private:
    void calculateMatrices();
};
