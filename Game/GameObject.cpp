#include "GameObject.hpp"

#include "Renderable.hpp"
#include "Transform.hpp"

#include <iostream>

GameObject::GameObject(std::string _name, bool _isActive){
    name = _name;
    isActive = _isActive;
    parent = NULL;
    
    //every GameObject has a transform
    Component* transform = new Transform();
    attachComponent(transform);
}

GameObject::~GameObject(){
   for(auto & child : children){
	delete child;
   }
   for(auto & component : components){
   	delete component;
   }
   if(parent != NULL){
   	parent->removeChild(this);
   }
}

void GameObject::attachComponent(Component* c){
    components.push_back(c);
    c->object = this;
    c->start();
}

Component* GameObject::getComponent(std::string name){
    Component* c = NULL;
    for(auto & component : components){
         if(component->getName() == name){
		c = component; 
         }
    }
    return c;
}

void GameObject::addChild(GameObject* child){
    //make sure the child doesn't have a parent
    if(child->getParent() != NULL){
	child->getParent()->removeChild(child);
    }
    children.push_back(child);
    child->setParent(this);
}

void GameObject::removeChild(GameObject* child){
    int index = 0;
    for(auto & el : children){
        if(el == child) break;
	index++;
    }
    if(index < children.size()) children.erase(children.begin() + index);

}

GameObject* GameObject::getChild(int index){
    return children.at(index);
}

GameObject* GameObject::getChild(std::string _name){
    GameObject* c = NULL;
    for(auto & child : children){
	if(child->name == _name){
 	    c = child;
  	}
    }
    return c;
}

void GameObject::update(){
    if(isActive){ 
    	for(auto & component : components){
   	    if(component->getEnabled()){
            	component->update();
    	    }
    	}
    	for(auto & child : children){
	    child->update();
    	}
    }
}

void GameObject::lateUpdate(){
    if(isActive){
    	for(auto & component : components){
            if(component->getEnabled()){
	        component->lateUpdate();
            }
    	}
    	for(auto & child : children){
            child->update();
    	}
    }
}

void GameObject::render(glm::mat4 projection,glm::mat4 view){
    Renderable* renderable = (Renderable*)getComponent("renderable");
    if(renderable != NULL){
    	renderable->render(projection, view);
    }

    for(auto & child : children){
	child->render(projection,view);
    }
}

void GameObject::setParent(GameObject* _parent){
    if(parent != NULL){
        parent->removeChild(this);
    }
    parent = _parent;
}
