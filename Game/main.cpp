#include "Window.hpp"
#include "Renderable.hpp"
#include "Camera.hpp"
#include "VAO.hpp"
#include "OBJLoader.hpp"
#include "GameObject.hpp"
#include "MyComponent.hpp"


using namespace glm;

int main(){
    Window myWindow = Window("Window", 1024, 768);

    Camera myCamera = Camera(-2,3,-5,0,0, 1024, 768);
    myCamera.lookAt(0,0,0);

    VAO* cubeVAO = new VAO();
    OBJLoader::loadOBJ(cubeVAO,"untitled.obj");

    ShaderProgram simple("simple.vs", "simple.fs");

    Renderable myCube1 = Renderable();
    myCube1.setVAO(cubeVAO);
    myCube1.setShaderProgram(&simple);

    Renderable myCube2 = Renderable();
    myCube2.setVAO(cubeVAO);
    myCube2.setShaderProgram(&simple);
    myCube2.translate(-3.0, 0.0, 0.0);

    GameObject rootObject(std::string("root"), Renderable(), false, true);
    GameObject* child1 = new GameObject(std::string("obj1"), myCube1, true, true);
    rootObject.addChild(child1);
    rootObject.addChild(new GameObject(std::string("obj2"), myCube2, true, true));

    new HopperComponent(child1, 2.0);
    //rootObject.deleteChild(0);
    //rootObject.renderable.rotate(0, 0.01, 0.0);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glEnable(GL_CULL_FACE);

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

        myCamera.updateAspect(myWindow.getWidth(), myWindow.getHeight());

        myWindow.clear();
        //myTriangle.rotate(0,0.001,0);
	//myTriangle.rotate(0, 0, 0.001);
        //myCamera.rotate(0,0.0001);

	rootObject.update();

	rootObject.lateUpdate();

        rootObject.renderable.rotate(0, 0.01, 0.0);
	rootObject.render(myCamera.getProjectionMatrix());

        //myTriangle.render(myCamera.getProjectionMatrix());
	//myTriangle2.render(myCamera.getProjectionMatrix());

        myWindow.update();

    }
    return 1;
}
