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
    glm::vec3 position;
    glm::vec3 viewDirection;
    float FOV;
public:
    Camera(float x, float y, float z, float vAngle, float hAngle);

    void setFOV(float fov);

    void translate(float x, float y, float z);
    void setPosition(float x, float y, float z);

    void rotate(float vAngle, float hAngle);
    void lookAt(float x, float y, float z);

    inline glm::vec3 getViewDirection() const {return viewDirection;};
    inline glm::mat4 getProjectionMatrix() const {return projectionMatrix;};
private:
    void calculateProjectionMatrix();
};
