#pragma once

#include <vector>
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

class FBO {
private:
    unsigned int fbo;
    unsigned int depth, depthWidth, depthHeight;
    std::vector<unsigned int> textures;

    std::vector<unsigned int> indicies;
public:
    FBO();
    ~FBO();

    inline unsigned int getFBOID() const {return fbo;}

    void bind();
    void unbind();

    void clear();

    void addTexture(int index,int width, int height, bool alpha);
    void addHighPTexture(int index, int width, int height, bool alpha);

    void bindTexture(int index, int tex);

    void addDepthBuffer(int width, int height);
    void copyDepthBuffer(FBO* target);
    void copyDepthBuffer();
    void bindDepthTexture(int index);

    void attachTextures();
private:
};
