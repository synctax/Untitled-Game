all:
	g++ -o Game main.cpp Window.cpp Renderable.cpp Camera.cpp VAO.cpp ShaderProgram.cpp -framework OpenGL -lglfw -lGLEW 	

debug:
	g++ -g -o Game main.cpp Window.cpp Renderable.cpp Camera.cpp VAO.cpp ShaderProgram.cpp -framework OpenGL -lglfw -lGLEW 	

clean:
	rm Game; rm -r Game.dSYM
