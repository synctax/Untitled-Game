#include "MyGame.hpp"

#include "ShaderProgram.hpp"
#include "VAO.hpp"

#include "OBJLoader.hpp"
#include "ColladaLoader.hpp"

#include "Renderable.hpp"
#include "FirstPersonController.hpp" 
#include "Animator.hpp"

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
    
    GameObject* player = new GameObject("player", true);
    player->attachComponent(new Renderable(robotVAO, simpleAnimated));
    
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
    
    root->addChild(player);
    camera->attachComponent(new FirstPersonController());
}

void MyGame::update(){
    
}
