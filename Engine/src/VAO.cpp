#include "VAO.hpp"

using namespace Engine;

VAO::VAO(){
    glGenVertexArrays(1, &vaoID);
    ebo = 0;
}

VAO::~VAO(){
    glDeleteVertexArrays(1,&vaoID);

    for(int i = 0; i < vbos.size(); i++){
        glDeleteBuffers(1,&vbos[i]);
    }
}

void VAO::addBuffer(int attrib, GLfloat* data, int entries, int entrySize){

    bind();
    GLuint vbo;
    glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, entries*entrySize*sizeof(GLfloat), data, GL_STATIC_DRAW);
    glVertexAttribPointer(
        attrib,
        entrySize,
        GL_FLOAT,
        GL_FALSE,
        0,
        (void*)0
    );
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    unbind();

    if (attrib == 0) vertexCount = entries;

    vbos.push_back(vbo);
    attribs.push_back(attrib);
}

void VAO::addElementBuffer(GLshort* data, int entries){

    vertexCount = entries;

    bind();
    glGenBuffers(1, &ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);

    glBufferData(GL_ELEMENT_ARRAY_BUFFER, entries*sizeof(GLshort), data, GL_STATIC_DRAW);
    unbind();
}

void VAO::draw() const{
    bind();
    enableAttribs();
    if (ebo > 0) {
        std::cout << "What the fuck" << std::endl;
        glDrawElements(GL_TRIANGLES, vertexCount, GL_UNSIGNED_SHORT, 0);
    }else{
        glDrawArrays(GL_TRIANGLES, 0, vertexCount);
    }
    disableAttribs();
    unbind();
}

void VAO::enableAttribs() const{
    for(int i = 0; i < attribs.size(); i++){
        glEnableVertexAttribArray(attribs[i]);
    }
}

void VAO::disableAttribs() const{
    for(int i = 0; i < attribs.size(); i++){
        glDisableVertexAttribArray(attribs[i]);
    }
}

void VAO::bind() const{
    glBindVertexArray(vaoID);
}

void VAO::unbind() const{
    glBindVertexArray(0);
}
