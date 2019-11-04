#pragma once

#include "ShaderProgram.hpp"
#include "VAO.hpp"
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

class Renderable {
public:
    Renderable();

    void setVAO(VAO* _vao);
    void createShader(const char* vPath, const char* fPath);
    void setShaderProgram(ShaderProgram* program);    

    void scale(float x, float y, float z);
    void translate(float x, float y, float z);
    void rotate(float x, float y, float z);

    void render(glm::mat4 _projectionMatrix);
    
    void update();
 
    glm::mat4 getModelMatrix();    

    glm::vec3 size;
    glm::vec3 position;
    glm::vec3 rotation;
private:
    VAO* vao;
    ShaderProgram* shaderProgram;
    glm::mat4 modelMatrix;
    glm::mat4 projectionMatrix;
};
