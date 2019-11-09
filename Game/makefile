all:
	g++ -std=c++11 -o Game main.cpp Window.cpp Renderable.cpp Camera.cpp VAO.cpp ShaderProgram.cpp GameObject.cpp Component.cpp OBJLoader.cpp Transform.cpp WindowEventManager.cpp Collider.cpp BoundingObject.cpp CollideableManager.cpp PlayerController.cpp -framework OpenGL -lglfw -lGLEW 	

debug:
	g++ -std=c++11 -g -o Game main.cpp Window.cpp Renderable.cpp Camera.cpp VAO.cpp ShaderProgram.cpp GameObject.cpp Component.cpp OBJLoader.cpp Transform.cpp WindowEventManager.cpp Collider.cpp BoundingObject.cpp CollideableManager.cpp PlayerController.cpp -framework OpenGL -lglfw -lGLEW

clean:
	rm Game; rm -r Game.dSYM
