#pragma once

#include <vector>

#include <glm/glm.hpp>
#include <glm/gtc/quaternion.hpp>

struct Contact {
    Contact(glm::vec3 mt) : minTran(mt) {}
    glm::vec3 minTran;
    //glm::vec3 point;
    //glm::vec3 normal;
    //glm::vec3 other_normal;
};

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

    virtual std::vector<Contact> didCollide(BoundingObject* obj) = 0;
    virtual void update(glm::vec3 _position, glm::quat rotation);

    glm::vec3 getPosition(){return position;}

    const Type type;
protected:
    //read-only externally    
    glm::vec3 position; 
};

class BoundingBox : public BoundingObject {
public:
    BoundingBox(float width, float height, float depth);
 
    virtual std::vector<Contact> didCollide(BoundingObject* obj);
    virtual void update(glm::vec3 _position, glm::quat rotation);    

    glm::vec3 getDimensions(){return dimensions;}

    glm::vec3 getRight(){return right;}
    glm::vec3 getUp(){return up;}
    glm::vec3 getForward(){return forward;}
    glm::vec3* getVerts(){return verts;}
private:
    glm::vec3 dimensions;
    glm::quat rotation;
    glm::vec3 verts[8];

    glm::vec3 forward;
    glm::vec3 right;
    glm::vec3 up;
};

class BoundingSphere : public BoundingObject {
public:
    BoundingSphere(float _radius);

    virtual std::vector<Contact> didCollide(BoundingObject* obj);
    
    float getRadius(){return radius;}
private:
    float radius; 
};
