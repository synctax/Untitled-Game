#pragma once

class Component;

#include "GameObject.hpp"

class Component {
public:
    Component();
    Component(GameObject* _object);
    virtual ~Component();

    virtual void update() = 0;
    virtual void lateUpdate() = 0;

    virtual Component* clone() = 0; //this will be used to copy GameObjects

    bool getEnabled() {return isEnabled;}
    void setEnabled(bool state) {isEnabled = state;}
protected:
    bool isEnabled;
    GameObject* object;
};
