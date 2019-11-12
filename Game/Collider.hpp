#pragma once

#include "Component.hpp"
#include "Transform.hpp"

#include "BoundingObject.hpp"

#include <vector>

class Collider;

struct CollisionEvent {
    CollisionEvent() 
     : other(NULL), contacts(std::vector<Contact>()) {}
    CollisionEvent(Collider* _other, 
                                std::vector<Contact> _contacts) 
     : other(_other), contacts(_contacts) {}

    Collider* other;
    std::vector<Contact> contacts; 
};

struct PossibleCollide {
    PossibleCollide(bool did, CollisionEvent _c) 
     : didCollide(did), c(_c) {}
    bool didCollide;
    CollisionEvent c;
};

//class that encapsulates communication between 
//object and Collideable Manager
class Collider : public Component {
public:
    Collider(float width, float height, float depth);
    ~Collider();

    virtual void start();
    virtual void update();
    
    virtual void onEnable();
    virtual void onDisable();

    void collision_update();
    std::vector<Contact> didCollide(Collider* obj);

    BoundingObject* getBounding(){return bounding;}  
private:
    BoundingObject* bounding;    
};

