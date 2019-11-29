#pragma once

#include <chrono>

namespace Engine {

class Time {
public: 

    //start the time class
    static void start();
    static void update();

    inline static float getDeltaUpdate() {return deltaUpdate;}
private:
    static std::chrono::time_point<std::chrono::high_resolution_clock> startPoint; 
    static std::chrono::time_point<std::chrono::high_resolution_clock> lastUpdate; 
    static double deltaUpdate;
};

}
