#version 330
layout(points) in;
layout(points, max_vertices=15) out;

//edge 0 - i 0, edge 8 - i 1, edge 4 - i 2
const int edgeIndexFromEdge[] = int[12](
0,2,0,2,0,2,0,2,1,1,1,1
);
 
const int cornerIndexAFromEdge[12] = int[12](
0,1,3,0,4,5,7,4,0,1,2,3
);

const ivec3 cornerPos[8] = ivec3[8](
    ivec3(0, 0, 0),
    ivec3(1, 0, 0),
    ivec3(1, 0, 1),
    ivec3(0, 0, 1),
    ivec3(0, 1, 0),
    ivec3(1, 1, 0),
    ivec3(1, 1, 1),
    ivec3(0, 1, 1)
);

uniform usampler2D triangulation;
uniform usampler3D vertexIndices;

in uint x8_y8_z8_case8[];
in uint c[];
in uint numPolys[];

out uint index;

uint getIndex(ivec3 cellPos, uint edge){
    //samples surrounding edges and own cells edges for vertex indices
    ivec3 position = cellPos;
    //moves position to the start of edge
    position += cornerPos[cornerIndexAFromEdge[edge]];
    position.x = position.x*3 + edgeIndexFromEdge[edge];
    return texelFetch(vertexIndices, position, 0).r;
}

void main(){
    float size = 33;
    ivec3 cellPos = ivec3(int(x8_y8_z8_case8[0] >> 24) & 0xFF, 
                          int(x8_y8_z8_case8[0] >> 16) & 0xFF, 
                          int(x8_y8_z8_case8[0] >>  8) & 0xFF);
                      
    for(int i = 0; i < int(numPolys[0]) * 3; i += 1){
        uint t = texelFetch(vertexIndices, cellPos, 0).r;
        index = texelFetch(triangulation, ivec2(i, c[0]), 0).r;
        EmitVertex();
        EndPrimitive();
    }
}

