#version 330 core
layout (location = 0) in vec3 vPos;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

out vec3 fragPos;
out vec2 texCoords;

void main()
{
    fragPos = (model * vec4(vPos,1.0)).xyz;
    gl_Position = projection * view * model * vec4(vPos, 1.0);
    texCoords = gl_Position.xy;
}
