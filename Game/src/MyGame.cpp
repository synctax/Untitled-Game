#include "MyGame.hpp"

#include "ShaderProgram.hpp"
#include "VAO.hpp"

#include "OBJLoader.hpp"
#include "ColladaLoader.hpp"

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
    ground->attachComponent(new Terrain(glm::ivec3(32*5, 32*5, 32*5), glm::vec3(0.2, 1, 0.2), simple, root, 1));
    root->addChild(ground);

    GameObject* ground2 = new GameObject("ground2", true);
    ground2->attachComponent(new Terrain(glm::ivec3(32, 32, 32), glm::vec3(1, 1, 1), simple, root, 1));
    Transform* ground2Trans = (Transform*)ground2->getComponent("transform");
    //ground2Trans->setPosition(40, 0, 0);
    ground2Trans->setScale(1, 1, 1);
    root->addChild(ground2);

    GameObject* player = new GameObject("player", true);
    player->attachComponent(new Renderable(robotVAO, simpleAnimated));
    
    GameObject* player2 = new GameObject("player2", true);
    player2->attachComponent(new Renderable(robotVAO, simple));
    
    Skeleton sk = ColladaLoader::loadSkeleton("../Assets/example.dae");
    Animator* animator = new Animator(sk);
    player->attachComponent(animator);
    
    /*
    for(auto & b : sk.bones){
        GameObject* bone = new GameObject(b.name, true);
        Transform* boneTransform = (Transform*)bone->getComponent("transform");
        glm::mat4 bind = glm::inverse(b.getInverseBind()); 
        glm::vec3 position = glm::vec3(bind[3]);
        glm::quat rotation = glm::quat(bind);

        boneTransform->setPosition(position.x, position.y, position.z);
        boneTransform->setRotation(rotation);
        boneTransform->setScale(0.1, 0.1, 0.1);
        bone->attachComponent(new Renderable(cubeVAO, simple));
        root->addChild(bone);
    }
    */

    Animation* a = new Animation(); 
    *a = ColladaLoader::loadAnimation("../Assets/example.dae", sk); 
    animator->setAnimation(a);
    
    //root->addChild(player);
    //root->addChild(ground);
    //root->addChild(player2);
    camera->attachComponent(new FirstPersonController());
}

void MyGame::update(){
    
}
