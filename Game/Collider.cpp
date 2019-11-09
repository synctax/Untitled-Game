#include "Collider.hpp"

#include "CollideableManager.hpp"

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
    std::vector<CollisionEvent> events = CollideableManager::getCollisions(this);
    for(auto & e : events){
	//notify the parent object  	
    } 
}

void Collider::collision_update(){
    Transform* objTransform = (Transform*)object->getComponent("transform");
    bounding->update(objTransform->calcGlobalPosition(), objTransform->calcGlobalRotation());
}

bool Collider::didCollide(Collider* obj){
    return bounding->didCollide(obj->getBounding());
}
