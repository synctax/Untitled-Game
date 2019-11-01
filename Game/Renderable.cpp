#include "Renderable.hpp"

Renderable::Renderable(){
    modelMatrix = glm::mat4(1.0f);
}

void Renderable::setVAO(VAO* _vao){
    vao = _vao;
}

void Renderable::createShader(const char* vPath, const char* fPath){
    shaderProgram = new ShaderProgram(vPath,fPath);
}

void Renderable::translate(float x, float y, float z){
    modelMatrix = glm::translate(modelMatrix, glm::vec3(x,y,z));
}


void Renderable::rotate(float x, float y, float z){
    modelMatrix = glm::rotate(modelMatrix, x, glm::vec3(1,0,0));
    modelMatrix = glm::rotate(modelMatrix, y, glm::vec3(0,1,0));
    modelMatrix = glm::rotate(modelMatrix, z, glm::vec3(0,0,1));
}

void Renderable::scale(float x, float y, float z){
    modelMatrix = glm::scale(modelMatrix, glm::vec3(x,y,z));
}

void Renderable::render(glm::mat4 _projectionMatrix){
    projectionMatrix = _projectionMatrix*modelMatrix;
    shaderProgram->setUniform(&projectionMatrix[0][0],"projectionMatrix");
    shaderProgram->start();

    vao->draw();
}
