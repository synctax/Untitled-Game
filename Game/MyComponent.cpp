#include "MyComponent.hpp"

#define PI 3.141592

#include <cmath>
#include <iostream>

#include "Transform.hpp" 

HopperComponent::HopperComponent(float _height) : Component(std::string("hopper")){
    height = _height;   
}

void HopperComponent::start(){
    lastUpdate = std::chrono::high_resolution_clock::now();
    startPos = ((Transform*)object->getComponent("transform"))->getPosition();   
}

void HopperComponent::update(){
    std::chrono::time_point<std::chrono::high_resolution_clock> now = std::chrono::high_resolution_clock::now();
    auto duration =  (std::chrono::duration_cast<std::chrono::milliseconds>(now - lastUpdate));
    int elapsed = duration.count();
    glm::vec3 newPos = startPos + glm::vec3(0, height * cos(PI/1000.0 * elapsed), 0);
    ((Transform*)object->getComponent("transform"))->setPosition(newPos.x, newPos.y, newPos.z);
}

Component* HopperComponent::clone(){
    return new HopperComponent(height);
}
