#pragma once

#include <stdio.h>
#include <stdlib.h>

#include <string>
#include <fstream>
#include <iostream>
#include <vector>
#include <sstream>
#include <algorithm>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

namespace Engine {

class ShaderProgram {
public:
    ShaderProgram(const char* vPath, const char* fPath);
    ~ShaderProgram();
    void start();
    void remove();
    void setUniformVec3(glm::vec3 data, std::string uniformName);
    void setUniformMat4(glm::mat4 matrix, std::string uniformName);
	void setUniformMat4Array(std::vector<glm::mat4> matrices,std::string uniformName);
private:
    GLuint loadShader(const char* vPath, const char* fPath);
    GLuint programID;
};

}
