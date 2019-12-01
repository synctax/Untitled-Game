#version 330 core
layout (location = 0) out vec3 gPosition;
layout (location = 1) out vec3 gNormal;
layout (location = 2) out vec4 gAlbedo;
layout (location = 3) out vec3 gLights;

in vec3 fragPos;
in vec3 normal;

uniform vec3 color;
uniform vec3 viewPos;
uniform bool isLight;

void main()
{
    gLights = vec3(0);
    gPosition.rgb = fragPos;
    gNormal = normalize(normal);
    gAlbedo.rgb = color;
    gAlbedo.a = 0.5;
    if (isLight){
        gLights = vec3(1);
    }
}
