#pragma once

#include <iostream>
#include <list>

#include "GameObject.hpp"
#include "Camera.hpp"
#include "Renderer.hpp"

class Scene{
private:
    std::list<GameObject*> objects;
    std::list<GameObject*> lights;

    Camera* camera;
    Renderer* renderer;

public:
    Scene();
    ~Scene();
    void load();
    void unload();

    void setRenderer(Renderer* _renderer);

    void addObject(GameObject* obj);
    void removeObject(GameObject* obj);

    void addLight(GameObject* light);
    void removeLight(GameObject* light);

    void setCamera(Camera* cam);

    void update();
    void render();

private:

};
