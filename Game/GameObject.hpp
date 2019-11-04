#pragma once

#include <vector>
#include <string>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp> 

class GameObject;

#include "Renderable.hpp" 
#include "Component.hpp"

class GameObject {
public:
    GameObject(std::string _name, Renderable _renderable, bool _isShown, bool _isActive);
    ~GameObject();
    void attachComponent(Component* c); 
    
    void addChild(GameObject* child); //important for adding kids
    void removeChild(GameObject* child); //this function should not be called by components (it will leave children floating)
    void deleteChild(int index); //this object may not be necessary (as external classes should not be able to delete children) 
 
    void update();
    void lateUpdate();
    
    void render(glm::mat4 projection);

    GameObject* clone(); //this is the primary method of instantiating a GameObject 
   
    //TO DO: Figure out what properties should definetly be private 
    std::string name;
    bool isShown;
    bool isActive;
    Renderable renderable;

    std::vector<GameObject*> children;
    std::vector<Component*> components;
    
    GameObject* getParent(){return parent;}
    void setParent(GameObject* _parent){if(parent != NULL){parent->removeChild(this);} parent = _parent;}
private:
    GameObject* parent;
};
