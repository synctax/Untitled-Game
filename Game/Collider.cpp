#include "Collider.hpp"

#include "CollideableManager.hpp"
#include "Renderable.hpp"

#include <iostream>

Collider::Collider(float width, float height, float depth) : Component("collider") {
    bounding = new BoundingBox(width, height, depth);
}

Collider::~Collider(){
    delete bounding;
}

void Collider::start(){
    //register to some kind've scene manager(stores collideables)
    CollideableManager::addCollideable(this);
}

void Collider::onEnable(){
    CollideableManager::addCollideable(this);
}

void Collider::onDisable(){
    CollideableManager::removeCollideable(this);
}

void Collider::update(){
    //check for collisions from CollideableManager and notify GameObject
    Renderable* renderable = (Renderable*)object->getComponent("renderable"); 
    
    renderable->setColor(1, 1, 1);

    std::vector<CollisionEvent> events = CollideableManager::getCollisions(this);   
    for(auto & e : events){
	//notify the parent object
	renderable->setColor(1, 0, 0);
	break;
  	//std::cout << object->getName() << " Collided with " << e.other->object->getName() << std::endl;	
    } 
}

void Collider::collision_update(){
    Transform* objTransform = (Transform*)object->getComponent("transform");
    bounding->update(objTransform->calcGlobalPosition(), objTransform->calcGlobalRotation());
}

bool Collider::didCollide(Collider* obj){
    return bounding->didCollide(obj->getBounding());
}
