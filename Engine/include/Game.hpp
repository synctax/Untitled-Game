#pragma once

#include "GameObject.hpp"
#include "Window.hpp"

namespace Engine {

class Game {
private:
    void mainloop();
    void init();

    Window* win;
protected:
    virtual void start(){return;};
    virtual void update(){return;};
    
    GameObject* root;
    GameObject* camera;
public:
    Game(){}
    void run();
};

}
