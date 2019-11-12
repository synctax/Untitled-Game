#include "BoundingObject.hpp"

#define max(a, b) ((a > b) ? (a) : (b))
#define min(a, b) ((a > b) ? (b) : (a))

#include <iostream>

BoundingObject::BoundingObject(Type _type) 
 : type(_type) {
    glm::vec3 position = glm::vec3(0, 0, 0);
}

void BoundingObject::update(glm::vec3 _position, glm::quat _rotation) {
    position = _position;
}

BoundingBox::BoundingBox(float width, float height, float depth) 
 : BoundingObject(BOX) {
    dimensions = glm::vec3(width/2, height/2, depth/2);
}

float calcOverlap(float min1, float max1, float min2, float max2){
    if(min1 < min2){
        return max1 - min2; 
    } else {
        return max2 - min1;
    }
    //return min1 < max2 && min2 < max1;
}

std::vector<Contact> BoundingBox::didCollide(BoundingObject* obj){
    std::vector<Contact> contacts;
    switch(obj->type){
        case BOX: {
	        BoundingBox* object = (BoundingBox*)obj;
            //perform BoxBox Collision
            bool collide = true;
            std::vector<glm::vec3> m_axis{forward, right, up};
            std::vector<glm::vec3> o_axis{object->getForward(), object->getRight(), object->getUp()};
            std::vector<glm::vec3> axis = 
            std::vector<glm::vec3>{forward, right, up, (float)-1.0*object->getForward(), (float)-1.0*object->getRight(), (float)-1.0*object->getUp()};
            //TODO: trim useless axis
            int i = 0;
            for(auto & m_a : m_axis){
                for(auto & o_a : o_axis){
                    if(m_a != o_a){
                        axis.push_back(glm::normalize(glm::cross(m_a, o_a)));
                    } else {
                        //we can trim said axis
                        //axis.erase(axis.begin() + i);
                    }
                }
                i++;
            }
            float minOverlap = 1000000;
            glm::vec3 minTran = glm::vec3(0, 0, 0);
            int ai = 0;
            for(auto & a : axis){
                float m_max = glm::dot(verts[0], a);
                float m_min = glm::dot(verts[0], a);
                for(int i = 1; i < 8; i++){
                    float dot = glm::dot(verts[i], a);
                    if(dot < m_min){m_min = dot;} 
                    else if(dot > m_max){m_max = dot;} 
                }
                glm::vec3 o_verts[8]; memcpy(o_verts, object->getVerts(), 8 * sizeof(glm::vec3));
                float o_max = glm::dot(o_verts[0], a);
                float o_min = glm::dot(o_verts[0], a);
                for(int i = 1; i < 8; i++){
                    float dot = glm::dot(o_verts[i], a);
                    if(dot < o_min){o_min = dot;} 
                    else if(dot > o_max){o_max = dot;} 
		        }
                float s = calcOverlap(m_min, m_max, o_min, o_max);
                if(s < 0){
                    collide = false;
                    break;
                }
                if(s < minOverlap){
                    minOverlap = s;
                    minTran = a;
                    if(o_min < m_min){
                        minTran *= -1; 
                    }
                }
                ai++;
	        }
            if(collide){
                contacts.push_back(Contact(minTran, minOverlap));    
            }
	        return contacts;
	        break;
        }  
        case SPHERE:{
	    BoundingSphere* object = (BoundingSphere*)obj;
  	    //Perform BoxSphere Collision
        glm::vec3 oPosition = object->getPosition();
	    glm::vec3 closestPoint=glm::vec3(
                                glm::clamp(oPosition.x, position.x - dimensions.x, position.x + dimensions.x),
                                glm::clamp(oPosition.y, position.y - dimensions.y, position.y + dimensions.y),
                                glm::clamp(oPosition.z, position.z - dimensions.z, position.z + dimensions.z));

  	    //return glm::distance(closestPoint, oPosition) < object->getRadius();
        }
    }
}

void BoundingBox::update(glm::vec3 _position, glm::quat _rotation){
    BoundingObject::update(_position, _rotation);
    //calculate new dimensions in order to fit the rotation
    //TODO: keep the box axis aligned
   
    //rotate the bounding box
    rotation = _rotation;
    
    glm::mat4 rMat = glm::mat4_cast(rotation);
    forward = glm::vec3(rMat*glm::vec4(0, 0, 1, 0));
    right = glm::vec3(rMat*glm::vec4(-1, 0, 0, 0));
    up = glm::vec3(rMat*glm::vec4(0, 1, 0, 0));

    glm::mat4 mat = glm::translate(glm::mat4(1.0), position) * rMat * glm::scale(glm::mat4(1.0), dimensions); 
    verts[0] = glm::vec3(mat*glm::vec4(-1, -1, -1, 1));
    verts[1] = glm::vec3(mat*glm::vec4(-1, -1,  1, 1));
    verts[2] = glm::vec3(mat*glm::vec4( 1, -1, -1, 1));
    verts[3] = glm::vec3(mat*glm::vec4( 1, -1,  1, 1));
    verts[4] = glm::vec3(mat*glm::vec4(-1,  1, -1, 1));
    verts[5] = glm::vec3(mat*glm::vec4(-1,  1,  1, 1));
    verts[6] = glm::vec3(mat*glm::vec4( 1,  1, -1, 1));
    verts[7] = glm::vec3(mat*glm::vec4( 1,  1,  1, 1));
    /*for(int i = 0; i < 8; i++){
        std::cout << "Vert " << i << ": " << verts[i].x << ", " << verts[i].y << ", " << verts[i].z << std::endl;
    }*/
}

BoundingSphere::BoundingSphere(float _radius) 
 : BoundingObject(SPHERE), radius(_radius) {}

std::vector<Contact> BoundingSphere::didCollide(BoundingObject* obj){
    switch(obj->type){
        case BOX:{
            //delegate to other onject
            return obj->didCollide(this);
            }
        case SPHERE:{
            BoundingSphere* object = (BoundingSphere*)obj;
            //calcuate SphereSphere Collision
            //return glm::distance(position, object->getPosition()) < radius + object->getRadius();
        }
    } 
} 
