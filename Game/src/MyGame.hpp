#include "Game.hpp"

class MyGame : public Engine::Game {
public:
    MyGame(){};
    virtual void start();
    virtual void update();

    //this is inherited from Engine::Game
    //Engine::GameObject* root;
};
