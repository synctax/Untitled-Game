#include "PointLight.hpp"

PointLight::PointLight(float r, float g, float b)
           : Component("point-light") {
    color = glm::vec3(r,g,b);
    linear = 0.001;
    quadratic = 0.001;
}


void PointLight::setColor(float r, float g, float b){
    color = glm::vec3(r,g,b);
}

void PointLight::setLinear(float l){
    linear = l;
}

void PointLight::setQuadratic(float q){
    quadratic = q;
}

void PointLight::start(){

}

void PointLight::update(){

}
