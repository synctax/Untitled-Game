#include "Renderable.hpp"

#include <iostream>
#include "Transform.hpp"

Renderable::Renderable() : Component("renderable") {
    isShown = true;
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
    	shaderProgram->setUniform(&newModelMatrix[0][0],"M");
   	shaderProgram->setUniform(&viewMatrix[0][0],"V");
   	shaderProgram->setUniform(&projectionMatrix[0][0],"P");
    	shaderProgram->start();
    	vao->draw();
    }
}
