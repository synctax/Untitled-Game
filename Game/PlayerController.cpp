#include "PlayerController.hpp"

#include "Transform.hpp"

#include <iostream>

#define PI 3.141592 

PlayerController::PlayerController() : Component("controller") {
    transform = NULL;
    speed = 0.1;
    rotSpeed = PI/1000;
    rotDir = 0;
    moveDir = 0;
}

void PlayerController::start(){
    std::cout << "player controller started" << std::endl;
    transform = (Transform*)object->getComponent("transform");
    WindowEventSubscriber::subscribe(WindowEventManager::events::KEYBOARD_INPUT);  
}

void PlayerController::update(){
    transform->rotate(0, rotDir, 0);
    glm::mat4 rMat = glm::mat4_cast(transform->calcGlobalRotation());
    glm::vec3 forward = glm::vec3(rMat*glm::vec4(0, 0, 1, 0));
    glm::vec3 deltaPos = glm::vec3(forward.x * moveDir, forward.y * moveDir, forward.z * moveDir);
    transform->translate(deltaPos.x, deltaPos.y, deltaPos.z); 
} 

void PlayerController::onKey(int key, int scancode, int action, int mods){
    if(isEnabled){
        //may want to move some of this to transform
    	switch(action){
	    case GLFW_PRESS:
		switch(key){
      		    case GLFW_KEY_W:
			moveDir += speed;
			break;
		    case GLFW_KEY_A:
			rotDir += rotSpeed;
			break;
		    case GLFW_KEY_S:
			moveDir += -speed;
			break;
		    case GLFW_KEY_D:
			rotDir += -rotSpeed;
			break;
		}
		break;
	    case GLFW_RELEASE:
		switch(key){
      		    case GLFW_KEY_W:
			moveDir -= speed;
			break;
		    case GLFW_KEY_A:
			rotDir -= rotSpeed;
			break;
		    case GLFW_KEY_S:
			moveDir -= -speed;
			break;
		    case GLFW_KEY_D:
			rotDir -= -rotSpeed;
			break;
		}
		break;
  	}
    }
}
