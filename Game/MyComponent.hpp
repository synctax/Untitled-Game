#include "Component.hpp"

#include <glm/glm.hpp>
#include <chrono>

class HopperComponent : public Component {
public:
    std::chrono::time_point<std::chrono::high_resolution_clock> lastUpdate;
    glm::vec3 startPos;
    float height;

    HopperComponent(float _height);
    
    virtual void start();

    virtual void update();
    virtual Component* clone();

};
