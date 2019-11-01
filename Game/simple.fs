#version 330 core

in vec3 frag_color;

out vec3 color;

void main(){
  color = frag_color;
  //color = vec3(1,1,1);
}

