#pragma once

#include "Collider.hpp"

struct CollisionEvent {
    CollisionEvent(){}
    CollisionEvent(Collider* _other) : other(_other) {}
    //float x; float y; float z; //this is hopeful, get a position of intersection
    Collider* other; 
};

class CollideableManager {
public:
    static void addCollideable(Collider* c);
    static void removeCollideable(Collider* c);
    
    static void update(); //gets all the collisions in the scene

    static std::vector<CollisionEvent> getCollisions(Collider* c);
private:
    struct dataNode {
        dataNode(Collider* _collider) : collider(_collider), eventsSize(0){}
	Collider* collider;
	int eventsSize;
	CollisionEvent events[10]; 
    };
    static std::vector<dataNode> data;
};
