#pragma once
#define FROM_COMPONENT

#include <string>

class Component;
#include "GameObject.hpp" //include necessary for reference to GameObject

class Component {
public:
    Component(std::string _name);
    //Component(GameObject* _object);
    virtual ~Component(){}
   
    virtual void start(){return;}    

    virtual void update(){return;}
    virtual void lateUpdate(){return;}

    virtual Component* clone(){return NULL;} //this will be used to copy GameObjects
    
    std::string getName(){return name;}    
    
    bool getEnabled() {return isEnabled;}
    void setEnabled(bool state) {isEnabled = state;}

    friend GameObject;
protected:
    std::string name;   

    bool isEnabled;
    GameObject* object;
};
