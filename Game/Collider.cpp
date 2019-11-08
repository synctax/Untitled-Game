#include "Collider.hpp"

float min(float a, float b){
    if(a > b){
        return b;
    } else {
  	return a;
    }
}

float max(float a, float b){
    if(a > b){
	return a;
    } else {
	return b;
    } 
}

Collider::Collider(float _width, float _height, float _depth) : Component("collider") {
    type = PRISM;
    dimensions = glm::vec3(_width, _height, _depth);
    offset = glm::vec3(0, 0, 0);
}

Collider::Collider(float _width, float _height, float _depth, float x, float y, float z) : Component("collider") {
    type = PRISM;
    
}

void start(){
    //register to some kind've scene manager(stores collideables)
}
void update(){
    //check for collisions and send messages
    //update my bounding box

}
