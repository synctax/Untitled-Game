#version 330 core
layout (location = 0) out vec3 lightRender;

uniform sampler2D sceneDepth;

uniform vec3 viewPos;
uniform vec3 color;

in vec3 fragPos;
in vec2 texCoords;

void main()
{
    float depth = texture(sceneDepth,texCoords).a;
    if (distance(viewPos,fragPos) < depth){
        lightRender = color;
    }
}
