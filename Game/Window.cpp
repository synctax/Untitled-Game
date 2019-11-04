#include "Window.hpp"

using namespace glm;

Window::Window(const char* title, int _width, int _height){

    width = _width;
    height = _height;

    glewExperimental = true;
    if (!glfwInit()){
        fprintf( stderr, "Failed to initialize GLFW\n");
        return;
    }
    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    window = glfwCreateWindow( width, height, title, NULL, NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
        glfwTerminate();
    }
    glfwMakeContextCurrent(window);
     
    glfwSetWindowUserPointer(window, this);

    glfwSetWindowSizeCallback(window, resize_callback);

    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
    }
}

void Window::update() const {
    glfwSwapBuffers(window);
    glfwPollEvents();
}

void Window::clear() const {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void resize_callback(GLFWwindow* window, int width, int height){
    Window* win = (Window*)glfwGetWindowUserPointer(window);
    win->width = width;
    win->height = height;
}