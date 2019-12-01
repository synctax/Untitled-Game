#version 330 core
layout (location = 0) in vec3 vPos;
layout (location = 1) in vec3 vNormal;

out vec3 fragPos;
out vec3 normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    vec4 worldPos = model * vec4(vPos, 1.0);
    fragPos = worldPos.xyz;

    mat3 normalMatrix = transpose(inverse(mat3(model)));
    normal = normalMatrix * vNormal;

    gl_Position = projection * view * worldPos;
}
