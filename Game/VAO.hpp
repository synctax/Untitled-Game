#pragma once

#include <vector>
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

class VAO{
private:
    GLuint vaoID;
    int vertexCount;
    std::vector<GLuint> vbos;
    std::vector<int> attribs;
public:
    VAO();
    ~VAO();
    inline GLuint getID() const {return vaoID;};
    void addBuffer(int attrib, GLfloat* data, int entries, int entrySize);
    void draw() const;
    void enableAttribs() const;
    void disableAttribs() const;
    void bind() const;
    void unbind() const;
};
