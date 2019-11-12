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

    VAO bodyVAO = VAO();
    OBJLoader::loadOBJ(&bodyVAO,"character.obj");

    VAO cubeVAO = VAO();
    OBJLoader::loadOBJ(&cubeVAO,"cube.obj");

    ShaderProgram simple("simple.vs", "simple.fs");
    
    //root Object
    GameObject rootObject(std::string("root"), true);
    
    //child1 object
    /*
    GameObject child1(std::string("obj1"), false);
    rootObject.addChild(&child1);

    child1.attachComponent(myCube1);
    */
    //Child 2 Object 
    GameObject child2(std::string("obj2"), true);
    rootObject.addChild(&child2);
    
    Collider* child2Collider = new Collider(2, 2, 2);
    child2.attachComponent(child2Collider);
    
    Renderable* child2Renderable = new Renderable(&cubeVAO, &simple);
    child2.attachComponent(child2Renderable);
    
    //player object
    GameObject player(std::string("player"), true);
    rootObject.addChild(&player);

    Renderable* playerRenderable = new Renderable(&bodyVAO, &simple);
    player.attachComponent(playerRenderable);
    
    GameObject playerHead(std::string("playerHead"), true);
    player.addChild(&playerHead);

    Renderable* playerHeadRenderable = new Renderable(&cubeVAO, &simple);
    playerHead.attachComponent(playerHeadRenderable);
    
    ((Transform*)playerHead.getComponent("transform"))->translate(0, 7, 0);
    ((Transform*)playerHead.getComponent("transform"))->scale(0.5, 0.5, 0.5);

    PlayerController* controller = new PlayerController();
    player.attachComponent(controller);
    
    Collider* playerCollider = new Collider(2, 2, 2);
    player.attachComponent(playerCollider);

    //Camera Object
    GameObject cameraObj = GameObject(std::string("cam1"), true);
    player.addChild(&cameraObj);
    
    Camera* camera = new Camera(1024, 768);
    cameraObj.attachComponent(camera); 
    
    //Transforming Objects
    ((Transform*)cameraObj.getComponent("transform"))->setPosition(0, 15, -5);
    ((Camera*)cameraObj.getComponent("camera"))->lookAt(&player);

    ((Transform*)child2.getComponent("transform"))->translate(10,0,10);

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
        //Transform* child2Trans = ((Transform*)child2.getComponent("transform"));
        //child2Trans->rotate(0, 0, 0.01);
        glm::vec3 playerTrans = ((Transform*)player.getComponent("transform"))->calcGlobalPosition();

        //std::cout << playerTrans.x << " " << playerTrans.y << " " << playerTrans.z << std::endl; 

        CollideableManager::update();

        rootObject.update();

        rootObject.lateUpdate();

        rootObject.render(camera->getProjectionMatrix(), camera->getViewMatrix());

        myWindow.update();

    }
    return 1;
}
