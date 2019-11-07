#include "Window.hpp"
#include "Renderable.hpp"
#include "Camera.hpp"
#include "VAO.hpp"
#include "OBJLoader.hpp"
#include "GameObject.hpp"
//#include "MyComponent.hpp"
#include "Transform.hpp"

#include <iostream>

using namespace glm;

int main(){
    Window myWindow = Window("Window", 1024, 768);
     
    VAO cubeVAO = VAO();
    OBJLoader::loadOBJ(&cubeVAO,"untitled.obj");

    VAO cube2VAO = VAO();
    OBJLoader::loadOBJ(&cube2VAO,"untitled.obj");

    ShaderProgram simple("simple.vs", "simple.fs");

    Renderable* myCube1 = new Renderable();
    myCube1->setVAO(&cubeVAO);
    myCube1->setShaderProgram(&simple);

    Renderable* myCube2 = new Renderable();
    myCube2->setVAO(&cube2VAO);
    myCube2->setShaderProgram(&simple);

    GameObject rootObject(std::string("root"), true);
    GameObject child1(std::string("obj1"), true);
    rootObject.addChild(&child1);
    GameObject child2(std::string("obj2"), true);
    rootObject.addChild(&child2);
    GameObject cameraObj = GameObject(std::string("cam1"), true);
    Camera* myCamera = new Camera(1024, 768);
    cameraObj.attachComponent(myCamera);  
    ((Transform*)cameraObj.getComponent("transform"))->setPosition(20, 5, -1);
    ((Transform*)cameraObj.getComponent("transform"))->lookAt(0,0,0);


    rootObject.addChild(&cameraObj);    
 
    child1.attachComponent(myCube1);
    child2.attachComponent(myCube2);
    ((Transform*)child2.getComponent("transform"))->translate(10,0,0);

    //new HopperComponent(&rootObject, 2.0);
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

        myCamera->updateAspect(myWindow.getWidth(), myWindow.getHeight());
        myWindow.clear();
         
        ((Transform*)rootObject.getComponent("transform"))->rotate(0, 0.001, 0.0);
        Transform* child2Trans = ((Transform*)child2.getComponent("transform"));
        child2Trans->rotate(0, 0.01, 0);
        glm::vec3 child2Pos = child2Trans->calcGlobalPosition();
        //std::cout << "pos: " << child2Pos.x << std::endl;

        //((Transform*)cameraObj.getComponent("transform"))->lookAt(0, 0, 0);

	rootObject.update();
        
	rootObject.lateUpdate();
        
        rootObject.render(myCamera->getProjectionMatrix(), myCamera->getViewMatrix());

        myWindow.update();

    }
    return 1;
}
