#include "Renderable.hpp"

#include <iostream>
#include "Transform.hpp"

Renderable::Renderable() : Component("renderable") {
    isShown = true;
}

Renderable::Renderable(VAO* _vao, ShaderProgram* _program) : Component("renderable") {
    isShown = true;
    vao = _vao;
    shaderProgram = _program;
}

void Renderable::setVAO(VAO* _vao){
    vao = _vao;
}

void Renderable::createShader(const char* vPath, const char* fPath){
    shaderProgram = new ShaderProgram(vPath,fPath);
}

void Renderable::setShaderProgram(ShaderProgram* program){
    shaderProgram = program;
}

void Renderable::render(glm::mat4 projectionMatrix, glm::mat4 viewMatrix){
    if(isShown){
	glm::mat4 newModelMatrix = ((Transform*)object->getComponent("transform"))->calcModelMatrix();
	shaderProgram->setUniformVec3(&color[0], "c");
	shaderProgram->setUniformMat4(&newModelMatrix[0][0],"M");
   	shaderProgram->setUniformMat4(&viewMatrix[0][0],"V");
   	shaderProgram->setUniformMat4(&projectionMatrix[0][0],"P");
    	shaderProgram->start();
    	vao->draw();
    }
}

void Renderable::setColor(float r, float g, float b){
    color = glm::vec3(r, g, b);
}
