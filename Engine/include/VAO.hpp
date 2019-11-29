#pragma once

#include <vector>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

namespace Engine {

class VAO {
private:
    GLuint vaoID;
    int vertexCount;
    std::vector<GLuint> vbos;
    std::vector<int> attribs;
    GLuint ebo;
public:
    VAO();
    ~VAO();
    inline GLuint getID() const {return vaoID;};
    void addFloatBuffer(int attrib, GLfloat* data, int entries, int entrySize);
    void addUIntBuffer(int attrib, GLuint* data, int entries, int entrySize);
    void addElementBuffer(GLshort* data, int entries);
    void draw() const;
    void enableAttribs() const;
    void disableAttribs() const;
    void bind() const;
    void unbind() const;
};

}
