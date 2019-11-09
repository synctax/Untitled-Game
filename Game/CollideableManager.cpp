#include "CollideableManager.hpp"

void CollideableManager::addCollideable(Collider* c){
    data.push_back(dataNode(c));
}

void CollideableManager::removeCollideable(Collider* c){
    int index;
    bool found = false;
    for(int i = 0; i < data.size(); i++){
 	if(data[i].collider == c){
 	    index = i;
	    found = true;
	    break; 	    
   	}
    }
    if(found) data.erase(data.begin() + index); 
}

void CollideableManager::update(){
    for(int i = 0; i < data.size(); i++){
	data[i].eventsSize = 0; 
	data[i].collider->collision_update();
    }
    for(int i = 0; i < data.size(); i++){
 	for(int c = i; c < data.size(); c++){
	    if(data[i].collider->didCollide(data[c].collider)){
		if(data[i].eventsSize != 10 && data[c].eventsSize != 10){
			data[i].events[data[i].eventsSize] = CollisionEvent(data[c].collider);
			data[i].eventsSize++;
			data[c].events[data[c].eventsSize] = CollisionEvent(data[i].collider);
			data[c].eventsSize++;
		}	
	    } 
	}
    }
}

std::vector<CollisionEvent> CollideableManager::getCollisions(Collider* c){
    std::vector<CollisionEvent> events = std::vector<CollisionEvent>(0); 
    for(auto & node : data){
	if(node.collider == c){
	    events.assign(&(node.events[0]), &(node.events[node.eventsSize])); 
	}
    }
    return events;
}
