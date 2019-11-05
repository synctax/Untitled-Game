#include "GameObject.hpp"

#include <iostream>

GameObject::GameObject(std::string _name, Renderable _renderable, bool _isShown, bool _isActive){
    name = _name;
    renderable = _renderable;
    isShown = _isShown;
    isActive = _isActive;
    parent = NULL;
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

void GameObject::deleteChild(int index){
    if(0 <= index && index < children.size()){
         //this delete will automatically remove the child via the deconstructor
	std::cout << children.at(index);
	delete children.at(index);
    }
}

void GameObject::update(){
    //std::cout << components.size() << std::endl;
    for(auto & component : components){
	//std::cout << "ehllo " << component << std::endl;
   	if(component->getEnabled()){
   	    //std::cout << "ehllo: " << component << std::endl;
            component->update();
    	}
    }
    for(auto & child : children){
	child->update();
    }
}

void GameObject::lateUpdate(){
    for(auto & component : components){
        if(component->getEnabled()){
	        component->lateUpdate();
        }
    }
    for(auto & child : children){
        child->update();
    }
}

void GameObject::render(glm::mat4 projection,glm::mat4 view, glm::mat4 objectMatrix){
    renderable.update();
    if(isShown){
    	renderable.render(projection,view,objectMatrix);
    }
    for(auto & child : children){
	    if(child->isShown){
	        child->render(projection,view,objectMatrix*renderable.getModelMatrix());
	    }
    }
}

void GameObject::render(glm::mat4 projection,glm::mat4 view){
    render(projection,view,glm::mat4(1.0f));

}
