#pragma once

#include <iostream>
#include <glm/glm.hpp>

#include "Component.hpp"
#include "GameObject.hpp"

class PointLight : public Component{
private:
    glm::vec3 color;
    float linear, quadratic;

public:
    PointLight(float r, float g, float b);

    void setColor(float r, float g, float b);
    void setLinear(float l);
    void setQuadratic(float q);

    inline float getLinear() const { return linear;}
    inline float getQuadratic() const {return quadratic;}
    inline glm::vec3 getColor() const { return color;}

    virtual void start();
    virtual void update();
};
