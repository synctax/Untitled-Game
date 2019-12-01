#pragma once

#include "PerlinNoise.h"

#include "Component.hpp"
#include "VAO.hpp"
#include "Renderable.hpp"

//for debugging
#include "GameObject.hpp"

class Terrain : public Engine::Component {
public:
    Terrain(glm::ivec3 _dimensions,glm::vec3 resolution,Engine::ShaderProgram* prog, Engine::GameObject* _root, float _s);

    virtual void start();
private:
    float s;

    void generate();
    float generator(float x, float y, float z);

    void march(); 
    
    int indexFromVec3(int x, int y, int z);
    glm::vec3 interp(glm::vec4 a, glm::vec4 b);
    
    PerlinNoise perlin;
    std::vector<glm::vec4> points; 

    unsigned int seed;
    float isoLevel;

    glm::ivec3 dimensions;
    glm::vec3 resolution;
    
    Engine::ShaderProgram* program;
    Engine::VAO* mesh;
    Engine::Renderable* renderable;
    
    //for debugging purposes
    Engine::GameObject* root;

    static const int triangulation[256][16];
    static const int cornerIndexAFromEdge[12];
    static const int cornerIndexBFromEdge[12];
    static const glm::vec3 cornerPosFromIndex[8];
};
