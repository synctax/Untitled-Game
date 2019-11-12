#pragma once

#include "Collider.hpp"

class CollideableManager {
public:
    static void addCollideable(Collider* c);
    static void removeCollideable(Collider* c);
    
    static void update(); //gets all the collisions in the scene

    static std::vector<CollisionEvent> getCollisions(Collider* c);
private:
    struct dataNode {
    dataNode(Collider* _collider) 
     : collider(_collider), eventsSize(0){}
        Collider* collider;
        int eventsSize;
        CollisionEvent events[10]; 
    };
    static std::vector<dataNode> data;
};
