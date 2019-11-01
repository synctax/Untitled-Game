#version 330

layout(location = 0) in vec3 vertexPosition_modelspace;
layout(location = 1) in vec3 vertexColor;

uniform mat4 projectionMatrix;

out vec3 frag_color;

void main(){
    gl_Position = projectionMatrix * vec4(vertexPosition_modelspace,1);
    frag_color = vertexColor;
}
