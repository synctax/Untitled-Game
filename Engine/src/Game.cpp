#include "Game.hpp"

#include "Camera.hpp"
#include "CollideableManager.hpp"

using namespace Engine;

void Game::run(){
	init();
	
	start();

	mainloop();
}

void Game::init(){
	win = new Window("Window", 1024, 768);
	root = new GameObject("root", true);
	
	camera = new GameObject("camera", true);
	camera->attachComponent(new Camera(1024, 768));
	root->addChild(camera);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glEnable(GL_CULL_FACE);
}

void Game::mainloop(){
	double previousTime = glfwGetTime();
	int frameCount = 0;

	while(!win->closed()){
		double currentTime = glfwGetTime();
		frameCount++;
		if ( currentTime - previousTime >= 1.0 )
		{
			std::cout << frameCount << std::endl;
			frameCount = 0;
		}
		if (currentTime-previousTime > 0.016){
			
			Camera* mainCam = (Camera*)camera->getComponent("camera");
			mainCam->updateAspect(win->getWidth(), win->getHeight());
			win->clear();

			CollideableManager::update();

			root->update();
			root->lateUpdate();

			root->render(mainCam->getProjectionMatrix(), mainCam->getViewMatrix());

			win->update();
			previousTime = currentTime;
		}
	}
}
