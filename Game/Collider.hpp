#pragma once

#include "Component.hpp"
#include "Transform.hpp"

#include "BoundingObject.hpp"

class Collider;
#include "CollideableManager.hpp"

#include <vector>

class Collider;

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

    friend class CollideableManager;
private:
    BoundingObject* bounding;    
};

