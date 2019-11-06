#pragma once

#include "ShaderProgram.hpp"
#include "VAO.hpp"

#include "Component.hpp"

class Renderable : public Component {
public:
    Renderable();

    virtual ~Renderable(){}

    void setVAO(VAO* _vao);
    void createShader(const char* vPath, const char* fPath);
    void setShaderProgram(ShaderProgram* program);

    void render(glm::mat4 projectionMatrix, glm::mat4 viewMatrix);

    inline bool getShown() const {return isShown;}
    void setShown(bool state){isShown = state;}
private:
   bool isShown;

    VAO* vao;
    ShaderProgram* shaderProgram;
};
