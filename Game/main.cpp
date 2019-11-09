#include "Window.hpp"
#include "Renderable.hpp"
#include "Camera.hpp"
#include "VAO.hpp"
#include "OBJLoader.hpp"
#include "GameObject.hpp"
#include "Transform.hpp"
#include "WindowEventManager.hpp"
#include "CollideableManager.hpp"

#include "PlayerController.hpp"
#include "Collider.hpp"

#include <iostream>

using namespace glm;

int main(){
    Window myWindow = Window("Window", 1024, 768);
    myWindow.disableCursor();

    VAO cubeVAO = VAO();
    OBJLoader::loadOBJ(&cubeVAO,"untitled1.obj");

    VAO cube2VAO = VAO();
    OBJLoader::loadOBJ(&cube2VAO,"untitled.obj");

    ShaderProgram simple("simple.vs", "simple.fs");

    Renderable* myCube1 = new Renderable();
    myCube1->setVAO(&cubeVAO);
    myCube1->setShaderProgram(&simple);

    Renderable* myCube2 = new Renderable();
    myCube2->setVAO(&cube2VAO);
    myCube2->setShaderProgram(&simple);
    
    //Child1 Object
    GameObject rootObject(std::string("root"), true);
    
    GameObject child1(std::string("obj1"), false);
    rootObject.addChild(&child1);

    child1.attachComponent(myCube1);
    
    //Child 2 Object 
    GameObject child2(std::string("obj2"), true);
    rootObject.addChild(&child2);
    
    Collider* child2Collider = new Collider(4, 2, 4);
    child2.attachComponent(child2Collider);

    child2.attachComponent(myCube2);
    
    //player object
    GameObject player(std::string("player"), true);
    rootObject.addChild(&player);

    Collider* playerCollider = new Collider(4, 2, 4);
    player.attachComponent(playerCollider);

    Renderable* playerRenderable = new Renderable(&cube2VAO, &simple);
    player.attachComponent(playerRenderable);
    
    PlayerController* controller = new PlayerController();
    player.attachComponent(controller);
 
    //Camera Object
    GameObject cameraObj = GameObject(std::string("cam1"), true);
    player.addChild(&cameraObj);
    
    Camera* camera = new Camera(1024, 768);
    cameraObj.attachComponent(camera); 
    
    //Transforming Objects 
    ((Transform*)cameraObj.getComponent("transform"))->setPosition(0, 5, -10);
    ((Camera*)cameraObj.getComponent("camera"))->lookAt(&player);

    ((Transform*)child2.getComponent("transform"))->translate(10,0,0);

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

        camera->updateAspect(myWindow.getWidth(), myWindow.getHeight());
        myWindow.clear();

        //((Transform*)rootObject.getComponent("transform"))->rotate(0, 0.001, 0.0);
        Transform* child2Trans = ((Transform*)child2.getComponent("transform"));
        child2Trans->rotate(0, 0.01, 0);

 	CollideableManager::update();

	rootObject.update();

	rootObject.lateUpdate();

        rootObject.render(camera->getProjectionMatrix(), camera->getViewMatrix());

        myWindow.update();

    }
    return 1;
}
