#include "BoundingObject.hpp"

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

BoundingObject::BoundingObject(Type _type) 
 : type(_type) {
    glm::vec3 position = glm::vec3(0, 0, 0);
}

void BoundingObject::update(glm::vec3 _position, glm::quat rotation) {
    position = _position;
}

BoundingBox::BoundingBox() 
 : BoundingObject(BOX) {}

bool BoundingBox::didCollide(BoundingObject* obj){
    switch(obj->type){
        case BOX:{
	    BoundingBox* object = (BoundingBox*)obj;
            //perform BoxBox Collision
	    glm::vec3 oPosition = object->getPosition();
            glm::vec3 oDimensions = (object->getDimensions());
 	    return ((oPosition.x - oDimensions.x < position.x + dimensions.x
                 && oPosition.x + oDimensions.x > position.x - dimensions.x) &&
                   (oPosition.y - oDimensions.y < position.y + dimensions.y
                 && oPosition.y + oDimensions.y > position.y - dimensions.y) &&
		   (oPosition.z - oDimensions.z < position.z + dimensions.z
                 && oPosition.z + oDimensions.z > position.z - dimensions.z));
        }  
        case SPHERE:{
	    BoundingSphere* object = (BoundingSphere*)obj;
  	    //Perform BoxSphere Collision
            glm::vec3 oPosition = object->getPosition();
	    glm::vec3 closestPoint = glm::vec3(max(position.x - dimensions.x, min(position.x + dimensions.x, oPosition.x)),
                                               max(position.y - dimensions.y, min(position.y + dimensions.y, oPosition.y)),
                                               max(position.z - dimensions.z, min(position.z + dimensions.z, oPosition.z)));

  	    return glm::distance(closestPoint, oPosition) < object->getRadius();
        }
    }
}

void BoundingBox::update(glm::vec3 _position, glm::quat rotation){
    BoundingObject::update(_position, rotation);
    //calculate new dimensions in order to fit the rotation
    //keep the box axis aligned 
}

BoundingSphere::BoundingSphere() 
 : BoundingObject(SPHERE) {}

bool BoundingSphere::didCollide(BoundingObject* obj){
    switch(obj->type){
	case BOX:{
            //delegate to other onject
	    return obj->didCollide(this);
        }
        case SPHERE:{
            BoundingSphere* object = (BoundingSphere*)obj;
            //calcuate SphereSphere Collision
            return glm::distance(position, object->getPosition()) < radius + object->getRadius();
	}
    } 
} 
