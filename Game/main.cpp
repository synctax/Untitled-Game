#include "Window.hpp"
#include "Renderable.hpp"
#include "Camera.hpp"
#include "VAO.hpp"
#include "OBJLoader.hpp"

using namespace glm;

int main(){
    Window myWindow = Window("Window", 1024, 768);

    Camera myCamera = Camera(-2,3,-5,0,0, 1024, 768);
    myCamera.lookAt(0,0,0);

    VAO* cubeVAO = new VAO();
    OBJLoader::loadOBJ(cubeVAO,"untitled.obj");

    ShaderProgram simple("simple.vs", "simple.fs");

    Renderable myTriangle = Renderable();
    myTriangle.setVAO(cubeVAO);
    myTriangle.setShaderProgram(&simple);

    double previousTime = glfwGetTime();
    int frameCount = 0;

    while(!myWindow.closed()){
        double currentTime = glfwGetTime();
        frameCount++;
        if ( currentTime - previousTime >= 1.0 )
        {
            std::cout << frameCount << std::endl;
            frameCount = 0;
            previousTime = currentTime;
        }

        glEnable(GL_DEPTH_TEST);
        glDepthFunc(GL_LESS);
        glEnable(GL_CULL_FACE);

	    myCamera.updateAspect(myWindow.getWidth(), myWindow.getHeight());
        myWindow.clear();
        myTriangle.rotate(0,0.001,0);

        myTriangle.render(myCamera.getProjectionMatrix(), myCamera.getViewMatrix());

        myWindow.update();

    }
    return 1;
}
