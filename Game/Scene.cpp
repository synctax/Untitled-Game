#include "Scene.hpp"

Scene::Scene(){

}

Scene::~Scene(){
    for (auto&& object : objects){
        delete object;
    }
}

void Scene::load(){

}

void Scene::unload(){

}

void Scene::setRenderer(Renderer* _renderer){
    renderer = _renderer;
}

void Scene::addObject(GameObject* obj){
    objects.push_back(obj);
}

void Scene::removeObject(GameObject* obj){
    objects.remove(obj);
    delete obj;
}

void Scene::addLight(GameObject* light){
    lights.push_back(light);
}

void Scene::removeLight(GameObject* light){
    lights.remove(light);
    delete light;
}

void Scene::setCamera(Camera* cam){
    camera = cam;
}

void Scene::update(){
    for (auto&& object : objects){
        object->update();
    }
    for (auto&& object : objects){
        object->lateUpdate();
    }
}

void Scene::render(){
    renderer->render(camera, objects, lights);
    //for (auto&& object : objects){
        //object->render(camera->getProjectionMatrix(), camera->getViewMatrix());
    //}
}
