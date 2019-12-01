#version 330 core
out vec4 fragColor;

in vec2 texCoords;

uniform sampler2D gPosition;
uniform sampler2D gNormal;
uniform sampler2D gAlbedo;
uniform sampler2D gLights;

const float gamma = 2.2;

struct Light {
    vec3 position;
    vec3 color;

    float linear;
    float quadratic;
};

const int MAX_LIGHTS = 32;
uniform Light lights[MAX_LIGHTS];
uniform int numLights;

uniform vec3 viewPos;

void main()
{
    vec3 fragPos = texture(gPosition, texCoords).rgb;
    vec3 normal = texture(gNormal, texCoords).rgb;
    vec3 diffuse = texture(gAlbedo, texCoords).rgb;
    vec3 specular = vec3(texture(gAlbedo, texCoords).a);
    float isLight = texture(gLights,texCoords).r;

    // then calculate lighting as usual
    vec3 lighting  = diffuse * 0.01; // hard-coded ambient component
    vec3 viewDir  = normalize(viewPos - fragPos);
    for(int i = 0; i < numLights; ++i)
    {
        if (isLight < 1){
            // diffuse
            vec3 lightDir = normalize(lights[i].position - fragPos);
            vec3 diffuse = max(dot(normal,lightDir), 0.0)* diffuse * lights[i].color;

            // specular
            vec3 halfwayDir = normalize(lightDir + viewDir);
            float spec = pow(max(dot(normal, halfwayDir), 0.0), 16.0);
            vec3 specular = lights[i].color * spec * specular.x;

            // attenuation
            float distance = length(lights[i].position - fragPos);
            float attenuation = 1.0 / (1.0 + lights[i].linear * distance + lights[i].quadratic * distance * distance);
            diffuse *= attenuation;
            specular *= attenuation;

            lighting += diffuse + specular;
        }else{
            lighting = diffuse;
        }
    }
    fragColor = vec4(lighting, 1.0);
    fragColor.rgb = pow(fragColor.rgb, vec3(1.0/gamma));
    //fragColor.rgb = vec3(isLight);
}
