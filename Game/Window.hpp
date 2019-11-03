#pragma once

#include <stdio.h>
#include <stdlib.h>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>

class Window{
private:
    GLFWwindow* window;
    int width, height;
public:
    Window(const char* title, int width, int height);
    void update() const;
    void clear() const;
    inline bool closed() const {return glfwWindowShouldClose(window) != 0;};
    inline int getWidth() const {return width;};
    inline int getHeight() const {return height;};
    ~Window(){};
    
    friend void resize_callback(GLFWwindow* win, int width, int height);
};

void resize_callback(GLFWwindow* win, int width, int height);
