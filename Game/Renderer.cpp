#include "Renderer.hpp"

Renderer::Renderer(int w, int h) : WindowEventSubscriber(){
    width = w;
    height = h;

    WindowEventSubscriber::subscribe(WindowEventManager::events::WINDOW_RESIZE);

    setupGBuffer();
    setupShaders();
    setupQuad();
}

Renderer::~Renderer(){
    delete geometryShader;
    delete lightingShader;

    delete quad;

    cleanup();
}

void Renderer::setupGBuffer() {
    gBuffer = new FBO();
    gBuffer->addHighPTexture(0,width, height, false);
    gBuffer->addHighPTexture(1,width, height, false);
    gBuffer->addHighPTexture(2,width,height,true);
    //gBuffer->addTexture(3,width,height,false);
    gBuffer->addDepthBuffer(width, height);

    gBuffer->attachTextures();
}

void Renderer::setupHdrBuffer(){
    hdrBuffer = new FBO();
    hdrBuffer->addTexture(0,width,height,false);

    gBuffer->attachTextures();
}

void Renderer::setupShaders(){
    geometryShader = new ShaderProgram("gShaderVert.glsl","gShaderFrag.glsl");
    lightingShader = new ShaderProgram("lightingShaderVertex.glsl",
                                            "lightingShaderFrag.glsl");
    lightingShader->start();
    lightingShader->setInt("gPosition", 0);
    lightingShader->setInt("gNormal", 1);
    lightingShader->setInt("gAlbedo", 2);

    debugShader = new ShaderProgram("debugVert.glsl","debugFrag.glsl");
    drawLightShader = new ShaderProgram("pointLightShaderVert.glsl","pointLightShaderFrag.glsl");
}

void Renderer::setupQuad(){
    float quadVertices[] = {
        // Left bottom triangle
        -1, 1, 0,
        -1, -1, 0,
        1, -1, 0,
        // Right top triangle
        1, -1, 0,
        1, 1, 0,
        -1, 1, 0
    };

    float quadTexCoords[] = {
         0.0f, 1.0f,
         0.0f, 0.0f,
         1.0f, 0.0f,

         1.0f, 0.0f,
         1.0f, 1.0f,
         0.0f, 1.0f

    };

    quad = new VAO();
    quad->addBuffer(0,quadVertices,6,3);
    quad->addBuffer(1,quadTexCoords,6,2);
}

void Renderer::disableLights(list<GameObject*> lights){
    for (auto&& light : lights){
        light->setActive(false);
    }
}

void Renderer::enableLights(list<GameObject*> lights){
    for (auto&& light : lights){
        light->setActive(true);
    }
}

void Renderer::bindLights(list<GameObject*> lights){
    int i = 0;
    for (auto&& light : lights){
        PointLight* lightComp = (PointLight*)light->getComponent("point-light");
        glm::vec3 position = ((Transform*)light->getComponent("transform"))->
                                                              calcGlobalPosition();
        glm::vec3 color = lightComp->getColor();
        float linear = lightComp->getLinear();
        float quadratic = lightComp->getQuadratic();

        lightingShader->setVec3("lights["+to_string(i)+"].position",
                                    &position[0]);
        lightingShader->setVec3("lights["+to_string(i)+"].color",&color[0]);
        lightingShader->setFloat("lights["+to_string(i)+"].linear",linear);
        lightingShader->setFloat("lights[" +to_string(i) + "].quadratic",
                                     quadratic);
        i++;
    }

    lightingShader->setInt("numLights", lights.size());
}

void Renderer::geometryPass(Camera* camera, list<GameObject*> objects){
    glm::vec3 cameraPos = ((Transform*)camera->getObject()->
                           getComponent("transform"))->calcGlobalPosition();
    gBuffer->bind();
    gBuffer->clear();
    geometryShader->start();
    geometryShader->setVec3("viewPos",&cameraPos[0]);
    geometryShader->setMat4("projection",
                                &(camera->getProjectionMatrix())[0][0]);
    geometryShader->setMat4("view", &(camera->getViewMatrix())[0][0]);
    for (auto&& object : objects){
        object->render(geometryShader);
    }
    gBuffer->unbind();
}

void Renderer::lightingPass(Camera* Camera, list<GameObject*> lights){
    glm::vec3 cameraPos = ((Transform*)Camera->getObject()->
                           getComponent("transform"))->calcGlobalPosition();

    lightingShader->start();
    gBuffer->bindTexture(0,0);
    gBuffer->bindTexture(1,1);
    gBuffer->bindTexture(2,2);
    gBuffer->bindTexture(3,3);

    bindLights(lights);

    lightingShader->setVec3("viewPos", &cameraPos[0]);
    quad->draw();
}

void Renderer::drawLights(Camera* camera, list<GameObject*> lights){
    //gBuffer->copyDepthBuffer();

    drawLightShader->start();
    drawLightShader->setMat4("projection", &(camera->getProjectionMatrix())[0][0]);
    drawLightShader->setMat4("view", &(camera->getViewMatrix())[0][0]);

    for (auto&& light : lights){
        light->render(drawLightShader);
    }
}

void Renderer::render(Camera* camera, list<GameObject*> objects,
                       list<GameObject*> lights){
    //disableLights(lights);
    geometryPass(camera, objects);
    //lightingPass(camera,lights);
    debugShader->start();
    gBuffer->bindTexture(0,3);
    quad->draw();
}

void Renderer::cleanup(){
    delete gBuffer;
}

void Renderer::onWindowResize(int w, int h){
    width = w;
    height = h;

    cleanup();
    setupGBuffer();
}
