#include "Time.hpp"

using namespace Engine;

std::chrono::time_point<std::chrono::high_resolution_clock> Time::startPoint;
std::chrono::time_point<std::chrono::high_resolution_clock> Time::lastUpdate;
double Time::deltaUpdate;

void Time::start(){
    startPoint = std::chrono::high_resolution_clock::now(); 
    lastUpdate = startPoint;
    deltaUpdate = 0.0;
}

void Time::update(){
    auto now = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = now - lastUpdate;
    deltaUpdate = elapsed.count();
    
    lastUpdate = now;
}
