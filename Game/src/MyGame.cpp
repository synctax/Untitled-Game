#include "MyGame.hpp"

#include "ShaderProgram.hpp"
#include "VAO.hpp"

#include "OBJLoader.hpp"
#include "ColladaLoader.hpp"

#include "Collider.hpp"
#include "Renderable.hpp"
#include "FirstPersonController.hpp" 
#include "Animator.hpp"
#include "Terrain.hpp"

using namespace Engine;

void MyGame::start(){
    simpleAnimated = new ShaderProgram("../../Engine/Shaders/animatedSimple.vs", "../../Engine/Shaders/simple.fs");
    simple = new ShaderProgram("../../Engine/Shaders/simple.vs", "../../Engine/Shaders/simple.fs");

    playerVAO = new VAO();
    OBJLoader::loadOBJ(playerVAO, "../Assets/character.obj");
    
    cubeVAO = new VAO();
    OBJLoader::loadOBJ(cubeVAO, "../Assets/cube.obj");

    robotVAO = new VAO();
    ColladaLoader::loadModel("../Assets/example.dae", robotVAO);
     
    GameObject* ground = new GameObject("ground", true);
    ground->attachComponent(new Terrain(simple));
    root->addChild(ground);
    
    GameObject* player = new GameObject("player", true);
    Transform* playerTrans = (Transform*)player->getComponent("transform");
    playerTrans->setScale(.01, 0.01, 0.01);

    player->attachComponent(new Renderable(robotVAO, simpleAnimated));
    player->attachComponent(new Collider(1, 8.7, 1));
    Skeleton sk = ColladaLoader::loadSkeleton("../Assets/example.dae");
    Animator* animator = new Animator(sk);
    player->attachComponent(animator);
    Animation* a = new Animation();
    *a = ColladaLoader::loadAnimation("../Assets/example.dae", sk); 
    animator->setAnimation(a);
    
    root->addChild(player);

    //GameObject* obstacle = new GameObject("cube1", true);
    //obstacle->attachComponent(new Renderable(cubeVAO, simple));
    //obstacle->attachComponent(new Collider(1, 1, 1));
    //root->addChild(obstacle);

    camera->attachComponent(new FirstPersonController());
}

void MyGame::update(){
    
}
