#include "Component.hpp"

#include <glm/glm.hpp>
#include <chrono>

class HopperComponent : public Component {
public:
    std::chrono::time_point<std::chrono::high_resolution_clock> lastUpdate;
    glm::vec3 startPos;
    float height;

    HopperComponent(float _height);
    HopperComponent(GameObject* _object, float _height);

    virtual void update();
    virtual void lateUpdate();
    virtual Component* clone();

};
