#pragma once

#include "Component.hpp"
#include "Transform.hpp"

//may break these into their own files later

//bounding boxes will be used for preliminary collision detection
class BoundingBox {
public:
    bool didCollide(BoundingBox* _box);
    friend BoundingBox;
private:
    glm::vec3 position; 
    glm::vec3 dimensions;
}

class Collider : public Component {
public:
    Collider(float _radius);
    Collider(float _width, float _height, float _depth);
    Collider(float _radius, float x, float y, float z);
    Collider(float _width, float _height, float _depth, float x, float y, float z);
  
    glm::vec3 getCenter(); 
  
    virtual void start();
    virtual void update();  
private:
    enum Type {
        PRISM,
        SPHERE
    };
    
    BoundingBox box;
    glm::vec3 dimensions; 
    glm::vec3 offset;
}

