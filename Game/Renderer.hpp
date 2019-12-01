#pragma once

#include <iostream>
#include <list>

#include <vector>
#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "GameObject.hpp"
#include "ShaderProgram.hpp"
#include "WindowEventManager.hpp"
#include "Camera.hpp"
#include "PointLight.hpp"
#include "Transform.hpp"
#include "VAO.hpp"
#include "FBO.hpp"

using namespace std;

class Renderer : public WindowEventSubscriber{
private:
    int width, height;

    FBO* gBuffer;
    FBO* hdrBuffer;

    ShaderProgram* geometryShader;
    ShaderProgram* lightingShader;

    ShaderProgram* drawLightShader;

    ShaderProgram* hdrShader;

public:
    Renderer(int w, int h);
    ~Renderer();

    void render(Camera* camera, list<GameObject*> objects, list<GameObject*> lights);

    ShaderProgram* debugShader;

    VAO* quad;
private:
    void setupGBuffer();
    void setupHdrBuffer();
    void setupShaders();
    void setupQuad();

    void disableLights(list<GameObject*> lights);
    void enableLights(list<GameObject*> lights);
    void bindLights(list<GameObject*> lights);

    void geometryPass(Camera* camera, list<GameObject*> objects);
    void lightingPass(Camera* camera, list<GameObject*> lights);
    void drawLights(Camera* camera, list<GameObject*> lights);

    void draw();

    void cleanup();

    virtual void onWindowResize(int w, int h);
};
