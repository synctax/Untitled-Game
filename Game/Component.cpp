#include "Component.hpp"

Component::Component(){
    isEnabled = true;
}

Component::Component(GameObject* _object){
    isEnabled = true;
    object = _object;
    object->attachComponent(this);
}

Component::~Component(){
   //object->detachComponent(this);
}
