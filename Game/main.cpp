#include "Window.hpp"
#include "Renderable.hpp"
#include "Camera.hpp"
#include "VAO.hpp"

using namespace glm;

int main(){
    Window myWindow = Window("Window", 1024, 768);

    Camera myCamera = Camera(-2,3,-5,0,0, 1024, 768);
    myCamera.lookAt(0,0,0);
    
    GLshort cube_indicies[] = {
       0, 1, 2,
       3, 0, 4,
       5, 0, 6,
       3, 6, 0,
       0, 2, 4,
       5, 1, 0,
       2, 1, 5,
       7, 6, 3,
       6, 7, 5,
       7, 3, 4,
       7, 4, 2,
       7, 2, 5 	
    };

    GLfloat cube_verticies[] = {
        -1.0f,-1.0f,-1.0f, // triangle 1 : begin
        -1.0f,-1.0f, 1.0f,
        -1.0f, 1.0f, 1.0f, // triangle 1 : end
        1.0f, 1.0f,-1.0f, // triangle 2 : begin
        //-1.0f,-1.0, -1.0,
        -1.0f, 1.0f,-1.0f, // triangle 2 : end
        1.0f,-1.0f, 1.0f,
        //-1.0f,-1.0f,-1.0f,
        1.0f,-1.0f,-1.0f,
        //1.0f, 1.0f,-1.0f,
        //1.0f,-1.0f,-1.0f,
        //-1.0f,-1.0f,-1.0f,
        //-1.0f,-1.0f,-1.0f,
        //-1.0f, 1.0f, 1.0f,
        //-1.0f, 1.0f,-1.0f,
        //1.0f,-1.0f, 1.0f, //start 6
        //-1.0f,-1.0f, 1.0f,
        //-1.0f,-1.0f,-1.0f,
        //-1.0f, 1.0f, 1.0f,
        //-1.0f,-1.0f, 1.0f,
        //1.0f,-1.0f, 1.0f,
        1.0f, 1.0f, 1.0f, 
        //1.0f,-1.0f,-1.0f,
        //1.0f, 1.0f,-1.0f,
        //1.0f,-1.0f,-1.0f,
        //1.0f, 1.0f, 1.0f,
        //1.0f,-1.0f, 1.0f,
        //1.0f, 1.0f, 1.0f,
        //1.0f, 1.0f,-1.0f,
        //-1.0f, 1.0f,-1.0f,
        //1.0f, 1.0f, 1.0f,
        //-1.0f, 1.0f,-1.0f,
        //-1.0f, 1.0f, 1.0f,
        //1.0f, 1.0f, 1.0f,
        //-1.0f, 1.0f, 1.0f,
        //1.0f,-1.0f, 1.0f
    };

    GLfloat cube_color[] = {
        0.583f,  0.771f,  0.014f,
        0.609f,  0.115f,  0.436f,
        0.327f,  0.483f,  0.844f,
        0.822f,  0.569f,  0.201f,
       // 0.435f,  0.602f,  0.223f,
        0.310f,  0.747f,  0.185f,
        0.597f,  0.770f,  0.761f,
       //0.559f,  0.436f,  0.730f,
        0.359f,  0.583f,  0.152f,
       //0.483f,  0.596f,  0.789f,
       //0.559f,  0.861f,  0.639f,
       //0.195f,  0.548f,  0.859f,
       //0.014f,  0.184f,  0.576f,
       //0.771f,  0.328f,  0.970f,
       //0.406f,  0.615f,  0.116f,
       //0.676f,  0.977f,  0.133f,
       //0.971f,  0.572f,  0.833f,
       //0.140f,  0.616f,  0.489f,
       //0.997f,  0.513f,  0.064f,
       //0.945f,  0.719f,  0.592f,
       //0.543f,  0.021f,  0.978f,
        0.279f,  0.317f,  0.505f,
       //0.167f,  0.620f,  0.077f,
       //0.347f,  0.857f,  0.137f,
       //0.055f,  0.953f,  0.042f,
       //0.714f,  0.505f,  0.345f,
       //0.783f,  0.290f,  0.734f,
       //0.722f,  0.645f,  0.174f,
       //0.302f,  0.455f,  0.848f,
       //0.225f,  0.587f,  0.040f,
       //0.517f,  0.713f,  0.338f,
       //0.053f,  0.959f,  0.120f,
       //0.393f,  0.621f,  0.362f,
       //0.673f,  0.211f,  0.457f,
       //0.820f,  0.883f,  0.371f,
       //0.982f,  0.099f,  0.879f
    };

    VAO* cubeVAO = new VAO();
    cubeVAO->addBuffer(0,cube_verticies,8,3);
    cubeVAO->addBuffer(1,cube_color,8,3);
    cubeVAO->addElementBuffer(cube_indicies, 36);    
	
    ShaderProgram simple("simple.vs", "simple.fs");    

    Renderable myTriangle = Renderable();
    myTriangle.setVAO(cubeVAO);
    myTriangle.setShaderProgram(&simple);

    Renderable myTriangle2 = Renderable();
    myTriangle2.setVAO(cubeVAO);
    myTriangle2.setShaderProgram(&simple);
    myTriangle2.translate(-3.0, 0.0, 0.0);

    while(!myWindow.closed()){
        glEnable(GL_DEPTH_TEST);
        glDepthFunc(GL_LESS);
        glEnable(GL_CULL_FACE);
	
	myCamera.updateAspect(myWindow.getWidth(), myWindow.getHeight());
	
        myWindow.clear();
        myTriangle.rotate(0,0.001,0);
	myTriangle.rotate(0, 0, 0.001);
        //myCamera.rotate(0,0.0001);

        myTriangle.render(myCamera.getProjectionMatrix());
	myTriangle2.render(myCamera.getProjectionMatrix());	

        myWindow.update();

    }
    return 1;
}
