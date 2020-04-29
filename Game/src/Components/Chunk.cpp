#include "Chunk.hpp"

#include <iostream>
#include <GLFW/glfw3.h>

#include "DebugRenderable.hpp"
#include "Renderable.hpp"



bool Chunk::first = true;
//shader programs dec here
Engine::ShaderProgram* Chunk::genDensities;
Engine::ShaderProgram* Chunk::genFilledCells;
Engine::ShaderProgram* Chunk::genVertMarkers;
Engine::ShaderProgram* Chunk::genVerts;
Engine::ShaderProgram* Chunk::splatIndices;
Engine::ShaderProgram* Chunk::genIndices;
uint Chunk::triangulationTexture; 


Chunk::Chunk(glm::vec3 _position, unsigned int _size, Engine::ShaderProgram* _terrainShader)
 : Component("chunk"), position(_position), size(_size), terrainShader(_terrainShader) {
    if(first){
        first = false;
        genDensities = new Engine::ShaderProgram("../Shaders/genDensities.vs", "../Shaders/genDensities.gs", "../Shaders/genDensities.fs");
        const char* filledCellsTF[] = {"oxyzc"};
        genFilledCells = new Engine::ShaderProgram("../Shaders/genFilledCells.vs", "../Shaders/genFilledCells.gs", "../Shaders/empty.fs", 1, filledCellsTF);
        const char* vertMarkersTF[] = {"x8_y8_z8_null4_edge4"};
        genVertMarkers = new Engine::ShaderProgram("../Shaders/genVertMarkers.vs", "../Shaders/genVertMarkers.gs", "../Shaders/empty.fs", 1, vertMarkersTF);
        const char* vertsTF[] = {"position", "normal"};
        genVerts = new Engine::ShaderProgram("../Shaders/genVerts.vs", "../Shaders/genVerts.gs", "../Shaders/empty.fs", 2, vertsTF);
        //DEBUG FEEDBACK
        const char* df[]  = {"pos"};
        splatIndices = new Engine::ShaderProgram("../Shaders/splatVertID.vs", "../Shaders/splatVertID.gs", "../Shaders/splatVertID.fs", 1, df);
        const char* indicesTF[] = {"index"};
        genIndices = new Engine::ShaderProgram("../Shaders/genIndices.vs", "../Shaders/genIndices.gs", "../Shaders/empty.fs", 1, indicesTF);

        //create a trinagulation texture
        glGenTextures(1, &triangulationTexture);

        const char triangulation[4096] = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 1, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 8, 3, 9, 8, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, 1, 2, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 2, 10, 0, 2, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             2, 8, 3, 2, 10, 8, 10, 9, 8, -1, -1, -1, -1, -1, -1, -1 ,
             3, 11, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 11, 2, 8, 11, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 9, 0, 2, 3, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 11, 2, 1, 9, 11, 9, 8, 11, -1, -1, -1, -1, -1, -1, -1 ,
             3, 10, 1, 11, 10, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 10, 1, 0, 8, 10, 8, 11, 10, -1, -1, -1, -1, -1, -1, -1 ,
             3, 9, 0, 3, 11, 9, 11, 10, 9, -1, -1, -1, -1, -1, -1, -1 ,
             9, 8, 10, 10, 8, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 7, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 3, 0, 7, 3, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 1, 9, 8, 4, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 1, 9, 4, 7, 1, 7, 3, 1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, 8, 4, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 4, 7, 3, 0, 4, 1, 2, 10, -1, -1, -1, -1, -1, -1, -1 ,
             9, 2, 10, 9, 0, 2, 8, 4, 7, -1, -1, -1, -1, -1, -1, -1 ,
             2, 10, 9, 2, 9, 7, 2, 7, 3, 7, 9, 4, -1, -1, -1, -1 ,
             8, 4, 7, 3, 11, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             11, 4, 7, 11, 2, 4, 2, 0, 4, -1, -1, -1, -1, -1, -1, -1 ,
             9, 0, 1, 8, 4, 7, 2, 3, 11, -1, -1, -1, -1, -1, -1, -1 ,
             4, 7, 11, 9, 4, 11, 9, 11, 2, 9, 2, 1, -1, -1, -1, -1 ,
             3, 10, 1, 3, 11, 10, 7, 8, 4, -1, -1, -1, -1, -1, -1, -1 ,
             1, 11, 10, 1, 4, 11, 1, 0, 4, 7, 11, 4, -1, -1, -1, -1 ,
             4, 7, 8, 9, 0, 11, 9, 11, 10, 11, 0, 3, -1, -1, -1, -1 ,
             4, 7, 11, 4, 11, 9, 9, 11, 10, -1, -1, -1, -1, -1, -1, -1 ,
             9, 5, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 5, 4, 0, 8, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 5, 4, 1, 5, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             8, 5, 4, 8, 3, 5, 3, 1, 5, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, 9, 5, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 0, 8, 1, 2, 10, 4, 9, 5, -1, -1, -1, -1, -1, -1, -1 ,
             5, 2, 10, 5, 4, 2, 4, 0, 2, -1, -1, -1, -1, -1, -1, -1 ,
             2, 10, 5, 3, 2, 5, 3, 5, 4, 3, 4, 8, -1, -1, -1, -1 ,
             9, 5, 4, 2, 3, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 11, 2, 0, 8, 11, 4, 9, 5, -1, -1, -1, -1, -1, -1, -1 ,
             0, 5, 4, 0, 1, 5, 2, 3, 11, -1, -1, -1, -1, -1, -1, -1 ,
             2, 1, 5, 2, 5, 8, 2, 8, 11, 4, 8, 5, -1, -1, -1, -1 ,
             10, 3, 11, 10, 1, 3, 9, 5, 4, -1, -1, -1, -1, -1, -1, -1 ,
             4, 9, 5, 0, 8, 1, 8, 10, 1, 8, 11, 10, -1, -1, -1, -1 ,
             5, 4, 0, 5, 0, 11, 5, 11, 10, 11, 0, 3, -1, -1, -1, -1 ,
             5, 4, 8, 5, 8, 10, 10, 8, 11, -1, -1, -1, -1, -1, -1, -1 ,
             9, 7, 8, 5, 7, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 3, 0, 9, 5, 3, 5, 7, 3, -1, -1, -1, -1, -1, -1, -1 ,
             0, 7, 8, 0, 1, 7, 1, 5, 7, -1, -1, -1, -1, -1, -1, -1 ,
             1, 5, 3, 3, 5, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 7, 8, 9, 5, 7, 10, 1, 2, -1, -1, -1, -1, -1, -1, -1 ,
             10, 1, 2, 9, 5, 0, 5, 3, 0, 5, 7, 3, -1, -1, -1, -1 ,
             8, 0, 2, 8, 2, 5, 8, 5, 7, 10, 5, 2, -1, -1, -1, -1 ,
             2, 10, 5, 2, 5, 3, 3, 5, 7, -1, -1, -1, -1, -1, -1, -1 ,
             7, 9, 5, 7, 8, 9, 3, 11, 2, -1, -1, -1, -1, -1, -1, -1 ,
             9, 5, 7, 9, 7, 2, 9, 2, 0, 2, 7, 11, -1, -1, -1, -1 ,
             2, 3, 11, 0, 1, 8, 1, 7, 8, 1, 5, 7, -1, -1, -1, -1 ,
             11, 2, 1, 11, 1, 7, 7, 1, 5, -1, -1, -1, -1, -1, -1, -1 ,
             9, 5, 8, 8, 5, 7, 10, 1, 3, 10, 3, 11, -1, -1, -1, -1 ,
             5, 7, 0, 5, 0, 9, 7, 11, 0, 1, 0, 10, 11, 10, 0, -1 ,
             11, 10, 0, 11, 0, 3, 10, 5, 0, 8, 0, 7, 5, 7, 0, -1 ,
             11, 10, 5, 7, 11, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             10, 6, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, 5, 10, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 0, 1, 5, 10, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 8, 3, 1, 9, 8, 5, 10, 6, -1, -1, -1, -1, -1, -1, -1 ,
             1, 6, 5, 2, 6, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 6, 5, 1, 2, 6, 3, 0, 8, -1, -1, -1, -1, -1, -1, -1 ,
             9, 6, 5, 9, 0, 6, 0, 2, 6, -1, -1, -1, -1, -1, -1, -1 ,
             5, 9, 8, 5, 8, 2, 5, 2, 6, 3, 2, 8, -1, -1, -1, -1 ,
             2, 3, 11, 10, 6, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             11, 0, 8, 11, 2, 0, 10, 6, 5, -1, -1, -1, -1, -1, -1, -1 ,
             0, 1, 9, 2, 3, 11, 5, 10, 6, -1, -1, -1, -1, -1, -1, -1 ,
             5, 10, 6, 1, 9, 2, 9, 11, 2, 9, 8, 11, -1, -1, -1, -1 ,
             6, 3, 11, 6, 5, 3, 5, 1, 3, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 11, 0, 11, 5, 0, 5, 1, 5, 11, 6, -1, -1, -1, -1 ,
             3, 11, 6, 0, 3, 6, 0, 6, 5, 0, 5, 9, -1, -1, -1, -1 ,
             6, 5, 9, 6, 9, 11, 11, 9, 8, -1, -1, -1, -1, -1, -1, -1 ,
             5, 10, 6, 4, 7, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 3, 0, 4, 7, 3, 6, 5, 10, -1, -1, -1, -1, -1, -1, -1 ,
             1, 9, 0, 5, 10, 6, 8, 4, 7, -1, -1, -1, -1, -1, -1, -1 ,
             10, 6, 5, 1, 9, 7, 1, 7, 3, 7, 9, 4, -1, -1, -1, -1 ,
             6, 1, 2, 6, 5, 1, 4, 7, 8, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 5, 5, 2, 6, 3, 0, 4, 3, 4, 7, -1, -1, -1, -1 ,
             8, 4, 7, 9, 0, 5, 0, 6, 5, 0, 2, 6, -1, -1, -1, -1 ,
             7, 3, 9, 7, 9, 4, 3, 2, 9, 5, 9, 6, 2, 6, 9, -1 ,
             3, 11, 2, 7, 8, 4, 10, 6, 5, -1, -1, -1, -1, -1, -1, -1 ,
             5, 10, 6, 4, 7, 2, 4, 2, 0, 2, 7, 11, -1, -1, -1, -1 ,
             0, 1, 9, 4, 7, 8, 2, 3, 11, 5, 10, 6, -1, -1, -1, -1 ,
             9, 2, 1, 9, 11, 2, 9, 4, 11, 7, 11, 4, 5, 10, 6, -1 ,
             8, 4, 7, 3, 11, 5, 3, 5, 1, 5, 11, 6, -1, -1, -1, -1 ,
             5, 1, 11, 5, 11, 6, 1, 0, 11, 7, 11, 4, 0, 4, 11, -1 ,
             0, 5, 9, 0, 6, 5, 0, 3, 6, 11, 6, 3, 8, 4, 7, -1 ,
             6, 5, 9, 6, 9, 11, 4, 7, 9, 7, 11, 9, -1, -1, -1, -1 ,
             10, 4, 9, 6, 4, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 10, 6, 4, 9, 10, 0, 8, 3, -1, -1, -1, -1, -1, -1, -1 ,
             10, 0, 1, 10, 6, 0, 6, 4, 0, -1, -1, -1, -1, -1, -1, -1 ,
             8, 3, 1, 8, 1, 6, 8, 6, 4, 6, 1, 10, -1, -1, -1, -1 ,
             1, 4, 9, 1, 2, 4, 2, 6, 4, -1, -1, -1, -1, -1, -1, -1 ,
             3, 0, 8, 1, 2, 9, 2, 4, 9, 2, 6, 4, -1, -1, -1, -1 ,
             0, 2, 4, 4, 2, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             8, 3, 2, 8, 2, 4, 4, 2, 6, -1, -1, -1, -1, -1, -1, -1 ,
             10, 4, 9, 10, 6, 4, 11, 2, 3, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 2, 2, 8, 11, 4, 9, 10, 4, 10, 6, -1, -1, -1, -1 ,
             3, 11, 2, 0, 1, 6, 0, 6, 4, 6, 1, 10, -1, -1, -1, -1 ,
             6, 4, 1, 6, 1, 10, 4, 8, 1, 2, 1, 11, 8, 11, 1, -1 ,
             9, 6, 4, 9, 3, 6, 9, 1, 3, 11, 6, 3, -1, -1, -1, -1 ,
             8, 11, 1, 8, 1, 0, 11, 6, 1, 9, 1, 4, 6, 4, 1, -1 ,
             3, 11, 6, 3, 6, 0, 0, 6, 4, -1, -1, -1, -1, -1, -1, -1 ,
             6, 4, 8, 11, 6, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             7, 10, 6, 7, 8, 10, 8, 9, 10, -1, -1, -1, -1, -1, -1, -1 ,
             0, 7, 3, 0, 10, 7, 0, 9, 10, 6, 7, 10, -1, -1, -1, -1 ,
             10, 6, 7, 1, 10, 7, 1, 7, 8, 1, 8, 0, -1, -1, -1, -1 ,
             10, 6, 7, 10, 7, 1, 1, 7, 3, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 6, 1, 6, 8, 1, 8, 9, 8, 6, 7, -1, -1, -1, -1 ,
             2, 6, 9, 2, 9, 1, 6, 7, 9, 0, 9, 3, 7, 3, 9, -1 ,
             7, 8, 0, 7, 0, 6, 6, 0, 2, -1, -1, -1, -1, -1, -1, -1 ,
             7, 3, 2, 6, 7, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             2, 3, 11, 10, 6, 8, 10, 8, 9, 8, 6, 7, -1, -1, -1, -1 ,
             2, 0, 7, 2, 7, 11, 0, 9, 7, 6, 7, 10, 9, 10, 7, -1 ,
             1, 8, 0, 1, 7, 8, 1, 10, 7, 6, 7, 10, 2, 3, 11, -1 ,
             11, 2, 1, 11, 1, 7, 10, 6, 1, 6, 7, 1, -1, -1, -1, -1 ,
             8, 9, 6, 8, 6, 7, 9, 1, 6, 11, 6, 3, 1, 3, 6, -1 ,
             0, 9, 1, 11, 6, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             7, 8, 0, 7, 0, 6, 3, 11, 0, 11, 6, 0, -1, -1, -1, -1 ,
             7, 11, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             7, 6, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 0, 8, 11, 7, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 1, 9, 11, 7, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             8, 1, 9, 8, 3, 1, 11, 7, 6, -1, -1, -1, -1, -1, -1, -1 ,
             10, 1, 2, 6, 11, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, 3, 0, 8, 6, 11, 7, -1, -1, -1, -1, -1, -1, -1 ,
             2, 9, 0, 2, 10, 9, 6, 11, 7, -1, -1, -1, -1, -1, -1, -1 ,
             6, 11, 7, 2, 10, 3, 10, 8, 3, 10, 9, 8, -1, -1, -1, -1 ,
             7, 2, 3, 6, 2, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             7, 0, 8, 7, 6, 0, 6, 2, 0, -1, -1, -1, -1, -1, -1, -1 ,
             2, 7, 6, 2, 3, 7, 0, 1, 9, -1, -1, -1, -1, -1, -1, -1 ,
             1, 6, 2, 1, 8, 6, 1, 9, 8, 8, 7, 6, -1, -1, -1, -1 ,
             10, 7, 6, 10, 1, 7, 1, 3, 7, -1, -1, -1, -1, -1, -1, -1 ,
             10, 7, 6, 1, 7, 10, 1, 8, 7, 1, 0, 8, -1, -1, -1, -1 ,
             0, 3, 7, 0, 7, 10, 0, 10, 9, 6, 10, 7, -1, -1, -1, -1 ,
             7, 6, 10, 7, 10, 8, 8, 10, 9, -1, -1, -1, -1, -1, -1, -1 ,
             6, 8, 4, 11, 8, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 6, 11, 3, 0, 6, 0, 4, 6, -1, -1, -1, -1, -1, -1, -1 ,
             8, 6, 11, 8, 4, 6, 9, 0, 1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 4, 6, 9, 6, 3, 9, 3, 1, 11, 3, 6, -1, -1, -1, -1 ,
             6, 8, 4, 6, 11, 8, 2, 10, 1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, 3, 0, 11, 0, 6, 11, 0, 4, 6, -1, -1, -1, -1 ,
             4, 11, 8, 4, 6, 11, 0, 2, 9, 2, 10, 9, -1, -1, -1, -1 ,
             10, 9, 3, 10, 3, 2, 9, 4, 3, 11, 3, 6, 4, 6, 3, -1 ,
             8, 2, 3, 8, 4, 2, 4, 6, 2, -1, -1, -1, -1, -1, -1, -1 ,
             0, 4, 2, 4, 6, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 9, 0, 2, 3, 4, 2, 4, 6, 4, 3, 8, -1, -1, -1, -1 ,
             1, 9, 4, 1, 4, 2, 2, 4, 6, -1, -1, -1, -1, -1, -1, -1 ,
             8, 1, 3, 8, 6, 1, 8, 4, 6, 6, 10, 1, -1, -1, -1, -1 ,
             10, 1, 0, 10, 0, 6, 6, 0, 4, -1, -1, -1, -1, -1, -1, -1 ,
             4, 6, 3, 4, 3, 8, 6, 10, 3, 0, 3, 9, 10, 9, 3, -1 ,
             10, 9, 4, 6, 10, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 9, 5, 7, 6, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, 4, 9, 5, 11, 7, 6, -1, -1, -1, -1, -1, -1, -1 ,
             5, 0, 1, 5, 4, 0, 7, 6, 11, -1, -1, -1, -1, -1, -1, -1 ,
             11, 7, 6, 8, 3, 4, 3, 5, 4, 3, 1, 5, -1, -1, -1, -1 ,
             9, 5, 4, 10, 1, 2, 7, 6, 11, -1, -1, -1, -1, -1, -1, -1 ,
             6, 11, 7, 1, 2, 10, 0, 8, 3, 4, 9, 5, -1, -1, -1, -1 ,
             7, 6, 11, 5, 4, 10, 4, 2, 10, 4, 0, 2, -1, -1, -1, -1 ,
             3, 4, 8, 3, 5, 4, 3, 2, 5, 10, 5, 2, 11, 7, 6, -1 ,
             7, 2, 3, 7, 6, 2, 5, 4, 9, -1, -1, -1, -1, -1, -1, -1 ,
             9, 5, 4, 0, 8, 6, 0, 6, 2, 6, 8, 7, -1, -1, -1, -1 ,
             3, 6, 2, 3, 7, 6, 1, 5, 0, 5, 4, 0, -1, -1, -1, -1 ,
             6, 2, 8, 6, 8, 7, 2, 1, 8, 4, 8, 5, 1, 5, 8, -1 ,
             9, 5, 4, 10, 1, 6, 1, 7, 6, 1, 3, 7, -1, -1, -1, -1 ,
             1, 6, 10, 1, 7, 6, 1, 0, 7, 8, 7, 0, 9, 5, 4, -1 ,
             4, 0, 10, 4, 10, 5, 0, 3, 10, 6, 10, 7, 3, 7, 10, -1 ,
             7, 6, 10, 7, 10, 8, 5, 4, 10, 4, 8, 10, -1, -1, -1, -1 ,
             6, 9, 5, 6, 11, 9, 11, 8, 9, -1, -1, -1, -1, -1, -1, -1 ,
             3, 6, 11, 0, 6, 3, 0, 5, 6, 0, 9, 5, -1, -1, -1, -1 ,
             0, 11, 8, 0, 5, 11, 0, 1, 5, 5, 6, 11, -1, -1, -1, -1 ,
             6, 11, 3, 6, 3, 5, 5, 3, 1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 10, 9, 5, 11, 9, 11, 8, 11, 5, 6, -1, -1, -1, -1 ,
             0, 11, 3, 0, 6, 11, 0, 9, 6, 5, 6, 9, 1, 2, 10, -1 ,
             11, 8, 5, 11, 5, 6, 8, 0, 5, 10, 5, 2, 0, 2, 5, -1 ,
             6, 11, 3, 6, 3, 5, 2, 10, 3, 10, 5, 3, -1, -1, -1, -1 ,
             5, 8, 9, 5, 2, 8, 5, 6, 2, 3, 8, 2, -1, -1, -1, -1 ,
             9, 5, 6, 9, 6, 0, 0, 6, 2, -1, -1, -1, -1, -1, -1, -1 ,
             1, 5, 8, 1, 8, 0, 5, 6, 8, 3, 8, 2, 6, 2, 8, -1 ,
             1, 5, 6, 2, 1, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 3, 6, 1, 6, 10, 3, 8, 6, 5, 6, 9, 8, 9, 6, -1 ,
             10, 1, 0, 10, 0, 6, 9, 5, 0, 5, 6, 0, -1, -1, -1, -1 ,
             0, 3, 8, 5, 6, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             10, 5, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             11, 5, 10, 7, 5, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             11, 5, 10, 11, 7, 5, 8, 3, 0, -1, -1, -1, -1, -1, -1, -1 ,
             5, 11, 7, 5, 10, 11, 1, 9, 0, -1, -1, -1, -1, -1, -1, -1 ,
             10, 7, 5, 10, 11, 7, 9, 8, 1, 8, 3, 1, -1, -1, -1, -1 ,
             11, 1, 2, 11, 7, 1, 7, 5, 1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, 1, 2, 7, 1, 7, 5, 7, 2, 11, -1, -1, -1, -1 ,
             9, 7, 5, 9, 2, 7, 9, 0, 2, 2, 11, 7, -1, -1, -1, -1 ,
             7, 5, 2, 7, 2, 11, 5, 9, 2, 3, 2, 8, 9, 8, 2, -1 ,
             2, 5, 10, 2, 3, 5, 3, 7, 5, -1, -1, -1, -1, -1, -1, -1 ,
             8, 2, 0, 8, 5, 2, 8, 7, 5, 10, 2, 5, -1, -1, -1, -1 ,
             9, 0, 1, 5, 10, 3, 5, 3, 7, 3, 10, 2, -1, -1, -1, -1 ,
             9, 8, 2, 9, 2, 1, 8, 7, 2, 10, 2, 5, 7, 5, 2, -1 ,
             1, 3, 5, 3, 7, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 7, 0, 7, 1, 1, 7, 5, -1, -1, -1, -1, -1, -1, -1 ,
             9, 0, 3, 9, 3, 5, 5, 3, 7, -1, -1, -1, -1, -1, -1, -1 ,
             9, 8, 7, 5, 9, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             5, 8, 4, 5, 10, 8, 10, 11, 8, -1, -1, -1, -1, -1, -1, -1 ,
             5, 0, 4, 5, 11, 0, 5, 10, 11, 11, 3, 0, -1, -1, -1, -1 ,
             0, 1, 9, 8, 4, 10, 8, 10, 11, 10, 4, 5, -1, -1, -1, -1 ,
             10, 11, 4, 10, 4, 5, 11, 3, 4, 9, 4, 1, 3, 1, 4, -1 ,
             2, 5, 1, 2, 8, 5, 2, 11, 8, 4, 5, 8, -1, -1, -1, -1 ,
             0, 4, 11, 0, 11, 3, 4, 5, 11, 2, 11, 1, 5, 1, 11, -1 ,
             0, 2, 5, 0, 5, 9, 2, 11, 5, 4, 5, 8, 11, 8, 5, -1 ,
             9, 4, 5, 2, 11, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             2, 5, 10, 3, 5, 2, 3, 4, 5, 3, 8, 4, -1, -1, -1, -1 ,
             5, 10, 2, 5, 2, 4, 4, 2, 0, -1, -1, -1, -1, -1, -1, -1 ,
             3, 10, 2, 3, 5, 10, 3, 8, 5, 4, 5, 8, 0, 1, 9, -1 ,
             5, 10, 2, 5, 2, 4, 1, 9, 2, 9, 4, 2, -1, -1, -1, -1 ,
             8, 4, 5, 8, 5, 3, 3, 5, 1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 4, 5, 1, 0, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             8, 4, 5, 8, 5, 3, 9, 0, 5, 0, 3, 5, -1, -1, -1, -1 ,
             9, 4, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 11, 7, 4, 9, 11, 9, 10, 11, -1, -1, -1, -1, -1, -1, -1 ,
             0, 8, 3, 4, 9, 7, 9, 11, 7, 9, 10, 11, -1, -1, -1, -1 ,
             1, 10, 11, 1, 11, 4, 1, 4, 0, 7, 4, 11, -1, -1, -1, -1 ,
             3, 1, 4, 3, 4, 8, 1, 10, 4, 7, 4, 11, 10, 11, 4, -1 ,
             4, 11, 7, 9, 11, 4, 9, 2, 11, 9, 1, 2, -1, -1, -1, -1 ,
             9, 7, 4, 9, 11, 7, 9, 1, 11, 2, 11, 1, 0, 8, 3, -1 ,
             11, 7, 4, 11, 4, 2, 2, 4, 0, -1, -1, -1, -1, -1, -1, -1 ,
             11, 7, 4, 11, 4, 2, 8, 3, 4, 3, 2, 4, -1, -1, -1, -1 ,
             2, 9, 10, 2, 7, 9, 2, 3, 7, 7, 4, 9, -1, -1, -1, -1 ,
             9, 10, 7, 9, 7, 4, 10, 2, 7, 8, 7, 0, 2, 0, 7, -1 ,
             3, 7, 10, 3, 10, 2, 7, 4, 10, 1, 10, 0, 4, 0, 10, -1 ,
             1, 10, 2, 8, 7, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 9, 1, 4, 1, 7, 7, 1, 3, -1, -1, -1, -1, -1, -1, -1 ,
             4, 9, 1, 4, 1, 7, 0, 8, 1, 8, 7, 1, -1, -1, -1, -1 ,
             4, 0, 3, 7, 4, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             4, 8, 7, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             9, 10, 8, 10, 11, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 0, 9, 3, 9, 11, 11, 9, 10, -1, -1, -1, -1, -1, -1, -1 ,
             0, 1, 10, 0, 10, 8, 8, 10, 11, -1, -1, -1, -1, -1, -1, -1 ,
             3, 1, 10, 11, 3, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 2, 11, 1, 11, 9, 9, 11, 8, -1, -1, -1, -1, -1, -1, -1 ,
             3, 0, 9, 3, 9, 11, 1, 2, 9, 2, 11, 9, -1, -1, -1, -1 ,
             0, 2, 11, 8, 0, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             3, 2, 11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             2, 3, 8, 2, 8, 10, 10, 8, 9, -1, -1, -1, -1, -1, -1, -1 ,
             9, 10, 2, 0, 9, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             2, 3, 8, 2, 8, 10, 0, 1, 8, 1, 10, 8, -1, -1, -1, -1 ,
             1, 10, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             1, 3, 8, 9, 1, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 9, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
             0, 3, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
        };

        glBindTexture(GL_TEXTURE_2D, triangulationTexture);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_R8I, 16, 256, 0, GL_RED_INTEGER, GL_BYTE, triangulation);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        
        char triangulationPixels[4096];
        memset(triangulationPixels, 0, 4096*sizeof(char));

        glGetTexImage(GL_TEXTURE_2D, 0, GL_RED_INTEGER, GL_BYTE, triangulationPixels);
        
        std::cout << "pixels: ";
        std::cout << std::dec;
        for(int i = 0; i < 4096; i++){
            std::cout << (int)triangulationPixels[i] << " ";
        }
        std::cout << "\n";
        glBindTexture(GL_TEXTURE_2D, 0);
    }
}

void Chunk::start(){
    //populate m_vao
    updateChunk();
    object->attachComponent(new Engine::Renderable(m_vao, terrainShader));
}

//TO DO: resize verts to use less VRAM
void Chunk::updateChunk(){
    
    unsigned int csp1 = size + 1;
    unsigned int csp2 = csp1+1;
    //set appropriate shader uniforms
   
    GLuint densityTexture = createDensityTex();
    //cleanup densities

    //begin compute
    glEnable(GL_RASTERIZER_DISCARD);

    //generate filled cells (I think this is working)
    GLuint filledCellsFeedback;
    glGenTransformFeedbacks(1, &filledCellsFeedback);
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, filledCellsFeedback);

    GLuint filledCells;
    glGenBuffers(1, &filledCells);
    glBindBuffer(GL_ARRAY_BUFFER, filledCells);
    glBufferData(GL_ARRAY_BUFFER,csp1*csp1*csp1*sizeof(GLuint),NULL,GL_STATIC_READ);
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, filledCells);
    genFilledCells->start();
    genFilledCells->setUniformInt(size, "chunkSize");
    
    //pass textures to draw
    Engine::VAO emptyVao = Engine::VAO();
    
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_3D, densityTexture);

    GLuint cellSizeQuery;
    glGenQueries(1, &cellSizeQuery);
    glBeginQuery(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN, cellSizeQuery);
    
    glBeginTransformFeedback(GL_POINTS);
    //capture a point for every voxel
    emptyVao.bind();
    glDrawArraysInstanced(GL_POINTS, 0, csp1*csp1, csp1);
    emptyVao.unbind();
    
    glFlush();
    glEndTransformFeedback();
    glEndQuery(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN);

    unsigned int numCells = 0;
    glGetQueryObjectuiv(cellSizeQuery, GL_QUERY_RESULT, &numCells);
    
    //DEBUG PRINT:
    std::cout << numCells << std::endl;
    
    unsigned int filledCellsData[numCells];
    glBindBuffer(GL_ARRAY_BUFFER, filledCells);
    glGetBufferSubData(GL_ARRAY_BUFFER,0,numCells*sizeof(GLuint), filledCellsData);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    std::cout << "Filled Cells: " << std::hex;
    for(int i = 0; i < 100; i++){
        std::cout << filledCellsData[i] << " ";
    }
    std::cout << std::dec << std::endl;
    
    //generate vertex marker list (sparse list of vertices)
    GLuint vertMarkerFeedback;
    glGenTransformFeedbacks(1, &vertMarkerFeedback);
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, vertMarkerFeedback);
    
    GLuint vertMarkers;
    glGenBuffers(1, &vertMarkers);
    glBindBuffer(GL_ARRAY_BUFFER, vertMarkers);
    glBufferData(GL_ARRAY_BUFFER,3*numCells*sizeof(GLuint),NULL,GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
    glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, vertMarkers);
    
    Engine::VAO cellsVao = Engine::VAO();
    cellsVao.addGLIntBuffer(0, filledCells, numCells, 1);

    genVertMarkers->start();
    //no uniforms

    glBeginTransformFeedback(GL_POINTS);
    //set the attributes for the draw call
    cellsVao.bind();
    cellsVao.enableAttribs();
    glDrawTransformFeedback(GL_POINTS, filledCellsFeedback);
    cellsVao.disableAttribs();
    cellsVao.unbind();
    glEndTransformFeedback();
    
    glFlush();

    //DEBUG
    /* 
    unsigned int vertMarkersData[3*numCells];
    
    glBindBuffer(GL_ARRAY_BUFFER, vertMarkers);
    glGetBufferSubData(GL_ARRAY_BUFFER,0,3*numCells*sizeof(GLuint),vertMarkersData);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
    std::cout << "VertMarkers: " << std::hex;
    for(int i = 0; i < 1000; i++){
        std::cout << vertMarkersData[i] << " ";
    }
    std::cout << std::dec << std::endl;
    
    glDisable(GL_RASTERIZER_DISCARD);
    */

    //generate complete vertices
    //ideally to conserve memory these buffers should of size numVertMarkers*3
    GLuint vertFeedback;
    glGenTransformFeedbacks(1, &vertFeedback);
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, vertFeedback);
    
    GLuint vertPositions;
    glGenBuffers(1, &vertPositions);
    GLuint vertNormals;
    glGenBuffers(1, &vertNormals);
    
    glBindBuffer(GL_ARRAY_BUFFER, vertPositions);
    glBufferData(GL_ARRAY_BUFFER,3*3*numCells*sizeof(GLfloat),NULL,GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER,0);
    glBindBuffer(GL_ARRAY_BUFFER, vertNormals);
    glBufferData(GL_ARRAY_BUFFER,3*3*numCells*sizeof(GLfloat),NULL,GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER,0);
    
    glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, vertPositions);
    glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 1, vertNormals);
    
    genVerts->start();
    genVerts->setUniformInt(size, "chunkSize");

    Engine::VAO vertMarkersVao = Engine::VAO();
    vertMarkersVao.addGLIntBuffer(0, vertMarkers, numCells*3, 1);

    glBeginTransformFeedback(GL_POINTS);
    //Transform Feedback 
    vertMarkersVao.bind();
    vertMarkersVao.enableAttribs();
    glDrawTransformFeedback(GL_POINTS, vertMarkerFeedback);
    vertMarkersVao.disableAttribs();
    vertMarkersVao.unbind();
    
    glEndTransformFeedback();
    
    //DEBUG:
    glFlush();
    /* 
    float vertData[3*3*numCells];

    glBindBuffer(GL_ARRAY_BUFFER, vertPositions);
    glGetBufferSubData(GL_ARRAY_BUFFER,0,3*3*numCells*sizeof(GLfloat),vertData);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    std::cout << "verts: ";
    for(int i = 0; i < 50; i+=3){
        std::cout << "(" << vertData[i] << ", " << vertData[i+1] << ", " << vertData[i+2] << ") "; 
    }
    std::cout << std::endl;
    */
    //splat verts
    glDisable(GL_RASTERIZER_DISCARD);
    
    GLuint indiceTexture;
    glGenTextures(1, &indiceTexture);

    glBindTexture(GL_TEXTURE_3D, indiceTexture);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_R32UI, csp1*3, csp1, csp1, 0, GL_RED_INTEGER, GL_UNSIGNED_INT, NULL);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glBindTexture(GL_TEXTURE_3D, 0);

    GLuint indiceFramebuffer;
    glGenFramebuffers(1, &indiceFramebuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, indiceFramebuffer);
    glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,  indiceTexture, 0);

    GLenum drawBuffers[] = {GL_COLOR_ATTACHMENT0}; 
    glDrawBuffers(1, drawBuffers);
    if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE){
        std::cout << "rut roh" << std::endl;
    }

    glBindFramebuffer(GL_FRAMEBUFFER, indiceFramebuffer);
    //glClearColor(1.0, 1.0, 1.0, 1.0);
    //glClear(GL_COLOR_BUFFER_BIT);
    splatIndices->start();
    splatIndices->setUniformInt(csp1, "chunkSize");
    
    vertMarkersVao.bind();
    vertMarkersVao.enableAttribs();
    //draw a point for output of vertMarkerFeedback
    glViewport(0, 0, csp1*3, csp1);
    glDrawTransformFeedback(GL_POINTS, vertMarkerFeedback);
    vertMarkersVao.disableAttribs();
    vertMarkersVao.unbind();

    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    //DEBUG
    glFlush();
     
    unsigned int indicePixels[csp1*3*csp1*csp1];
    memset(indicePixels, 0, csp1*3*csp1*csp1*sizeof(unsigned int));

    glBindTexture(GL_TEXTURE_3D, indiceTexture);
    glGetTexImage(GL_TEXTURE_3D, 0, GL_RED_INTEGER, GL_UNSIGNED_INT, indicePixels);
    glBindTexture(GL_TEXTURE_3D, 0);
    
    std::cout << "pixels: ";
    for(int i = 0; i < 100; i++){
        std::cout << indicePixels[i] << " ";
    }
    std::cout << "\n";
    
    //gen indices (compute)
    glEnable(GL_RASTERIZER_DISCARD);
    
    GLuint indices;
    glGenBuffers(1, &indices);

    glBindBuffer(GL_ARRAY_BUFFER, indices);
    glBufferData(GL_ARRAY_BUFFER,15*numCells*sizeof(GLuint),NULL,GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
    glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, indices);
    genIndices->start();
    //set up the samplers
    genIndices->setUniformInt(0, "vertexIndices");
    genIndices->setUniformInt(1, "triangulation");
    //pass indice texture to compute
    
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_3D, indiceTexture);

    glActiveTexture(GL_TEXTURE0 + 1);
    glBindTexture(GL_TEXTURE_2D, triangulationTexture);
    
    GLuint indiceSizeQuery;
    glGenQueries(1, &indiceSizeQuery);
    glBeginQuery(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN, indiceSizeQuery);

    glBeginTransformFeedback(GL_POINTS);
    cellsVao.bind();
    cellsVao.enableAttribs();
    glDrawTransformFeedback(GL_POINTS, filledCellsFeedback);
    cellsVao.disableAttribs();
    cellsVao.unbind();
    glEndTransformFeedback();
    
    glFlush();
    
    glEndQuery(GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN);
    unsigned int numIndices;
    glGetQueryObjectuiv(indiceSizeQuery, GL_QUERY_RESULT, &numIndices);
    
    //return to normal
    glDisable(GL_RASTERIZER_DISCARD);
    //DEBUG PRINT:
    std::cout << numIndices << std::endl;

    unsigned int cpuIndices[100];
    
    glBindBuffer(GL_ARRAY_BUFFER, indices);
    glGetBufferSubData(GL_ARRAY_BUFFER, 0, 100*sizeof(GLuint), cpuIndices);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    //std::cout << std::hex;
    for(int i = 0; i < 100; i++){
        std::cout << "index: " << cpuIndices[i] << std::endl;
    }
    //std::cout << std::dec;

    //DEBUG:
    /*Engine::GameObject* debugDense = new Engine::GameObject("debugDensity", true);
    debugDense->attachComponent(new DebugRenderable(indiceTexture, genDensities));
    object->addChild(debugDense);*/
    
    if(m_vao != NULL){
        delete m_vao;
    }
    m_vao = new Engine::VAO();
    m_vao->addGLFloatBuffer(0, vertPositions, 3*numCells, 3);
    m_vao->addGLFloatBuffer(1, vertNormals, 3*numCells, 3);
    m_vao->addGLElementBuffer(indices, numIndices);
}

GLuint Chunk::createDensityTex(){
    unsigned int csp1 = size + 1;
    unsigned int csp2 = csp1+1;
    
    GLuint densityTexture;
    glGenTextures(1, &densityTexture);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_3D, densityTexture);
    
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RED, csp2, csp2, csp2, 0, GL_RED, GL_FLOAT, NULL);
    //set the sampling to linear (useful for calculating gradient)
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glBindTexture(GL_TEXTURE_3D, 0);

    //create the framebuffer
    GLuint densityFramebuffer;
    glGenFramebuffers(1, &densityFramebuffer);
    
    glBindFramebuffer(GL_FRAMEBUFFER, densityFramebuffer);
    glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, densityTexture, 0);
    
    GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
    glDrawBuffers(1, drawBuffers);
    if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE){
        std::cout << "rut roh" << std::endl;
    }

    //render
    glBindFramebuffer(GL_FRAMEBUFFER, densityFramebuffer);
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
    
    genDensities->start();
    genDensities->setUniformInt(size, "chunkSize");
    genDensities->setUniformVec3(position, "chunkPos");

    Engine::VAO emptyVao = Engine::VAO();
    emptyVao.bind();
    
    glViewport(0, 0, csp2, csp2);
    glDrawArraysInstanced(GL_TRIANGLES, 0, 6, csp2);
    
    emptyVao.unbind();
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    //do some cleanup
    //note: the vao should clean itself up
    glDeleteFramebuffers(1, &densityFramebuffer);

    glFlush();

    return densityTexture;
}
