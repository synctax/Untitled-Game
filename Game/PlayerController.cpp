#include "PlayerController.hpp"

#include "Transform.hpp"

#include <iostream>

#define PI 3.141592 

PlayerController::PlayerController() : Component("controller") {
    transform = NULL;
}

void PlayerController::start(){
    std::cout << "player controller started" << std::endl;
    transform = (Transform*)object->getComponent("transform");
    WindowEventSubscriber::subscribe(WindowEventManager::events::KEYBOARD_INPUT);  
}

void PlayerController::onKey(int key, int scancode, int action, int mods){
    if(isEnabled){
        //may want to move some of this to transform
  	glm::mat4 rMat = glm::mat4_cast(transform->calcGlobalRotation());
  	glm::vec3 forward = glm::vec3(rMat*glm::vec4(0, 0, 1, 0));
        glm::vec3 backward = glm::vec3(forward.x*-1.0, forward.y*-1.0, forward.z*-1.0);
    	if(action == GLFW_PRESS){
   	    switch(key){
 		case GLFW_KEY_W:
		    transform->translate(forward.x, forward.y, forward.z);
		    break;
		case GLFW_KEY_A:
   		    std::cout << "ehllo" << std::endl;
		    transform->rotate(0, PI/10, 0);
		    break;
		case GLFW_KEY_S:
		    transform->translate(backward.x, backward.y, backward.z);
		    break;
		case GLFW_KEY_D:
		    transform->rotate(0, -PI/10, 0);
		    break;
	    }
  	}
    }
}
