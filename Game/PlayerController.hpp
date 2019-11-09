#pragma once

#include "Component.hpp"
#include "WindowEventManager.hpp"

#include "Transform.hpp"

class PlayerController : public Component, public WindowEventSubscriber {
public:
    PlayerController();
   
    virtual void start();

    virtual void update();
    //virtual void onEnable();
    //virtual void onDisable(); 
private:
    virtual void onKey(int key, int scancode, int action, int mods);
    
    float speed;
    float rotSpeed;
 
    float rotDir;   
    float moveDir;    
 
    Transform* transform;
};
