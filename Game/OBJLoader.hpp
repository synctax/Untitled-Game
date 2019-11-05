#pragma once

#include "VAO.hpp"
#include <iostream>
#include <vector>
#include <string>
#include <cstring>
#include <glm/glm.hpp>

class OBJLoader{
private:
    OBJLoader(){};
public:
    static bool loadOBJ(VAO* vao, const char* file);
};
