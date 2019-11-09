#pragma once

#include <glm/glm.hpp>
#include <glm/gtc/quaternion.hpp>

//class that encapsulates collision math 
//between different primitives
class BoundingObject {
public:
    enum Type {
   	BOX,
     	SPHERE,
    };
    BoundingObject(Type _type);
    virtual ~BoundingObject(){return;} 

    virtual bool didCollide(BoundingObject* obj) = 0;
    virtual void update(glm::vec3 _position, glm::quat rotation);

    glm::vec3 getPosition(){return position;}

    const Type type;
protected:
    //read-only externally
    glm::vec3 position;
    glm::quat rotation;        
};

class BoundingBox : public BoundingObject {
public:
    BoundingBox(float width, float height, float depth);
 
    virtual bool didCollide(BoundingObject* obj);
    virtual void update(glm::vec3 _position, glm::quat rotation);    

    glm::vec3 getDimensions(){return dimensions;}
private:
    glm::vec3 dimensions;

};

class BoundingSphere : public BoundingObject {
public:
    BoundingSphere(float _radius);

    virtual bool didCollide(BoundingObject* obj);
    
    float getRadius(){return radius;}
private:
    float radius; 
};
