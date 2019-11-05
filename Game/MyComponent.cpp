#include "myComponent.hpp"

#define PI 3.141592

#include <cmath>
#include <iostream>

HopperComponent::HopperComponent(float _height){
    lastUpdate = std::chrono::high_resolution_clock::now();
    height = _height;
    startPos = object->renderable.position;
}

HopperComponent::HopperComponent(GameObject* _object, float _height) :
	Component(_object){
    lastUpdate = std::chrono::high_resolution_clock::now();
    height = _height;
    startPos = object->renderable.position;
}

void HopperComponent::update(){
    std::chrono::time_point<std::chrono::high_resolution_clock> now = std::chrono::high_resolution_clock::now();
    auto duration =  (std::chrono::duration_cast<std::chrono::milliseconds>(now - lastUpdate));
    int elapsed = duration.count();
    object->renderable.position = startPos + glm::vec3(0.0, height * cos(PI/1000.0 * elapsed), 0.0);
}

void HopperComponent::lateUpdate(){
    return;
}

Component* HopperComponent::clone(){
    return new HopperComponent(height);
}
