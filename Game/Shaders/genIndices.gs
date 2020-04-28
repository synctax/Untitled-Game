#version 330
layout(points) in;
layout(points, max_vertices=15) out;

//edge 3 - i 0, edge 0 - i 1, edge 8 - i 2
const int edgeIndexFromEdge[] = int[12](
1,0,1,0,1,0,1,0,2,2,2,2
);
 
const int cornerIndexAFromEdge[12] = int[12](
0,1,3,0,4,5,7,4,0,1,2,3
);

const int cornerIndexBFromEdge[12] = int[12](
1,2,2,3,5,6,6,7,4,5,6,7
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

const int caseToNum[256] = int[256]( 0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,2,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,3,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,3,2,3,3,2,3,4,4,3,3,4,4,3,4,5,5,2,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,3,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,4,2,3,3,4,3,4,2,3,3,4,4,5,4,5,3,2,3,4,4,3,4,5,3,2,4,5,5,4,5,2,4,1,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,3,2,3,3,4,3,4,4,5,3,2,4,3,4,3,5,2,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,4,3,4,4,3,4,5,5,4,4,3,5,2,5,4,2,1,2,3,3,4,3,4,4,5,3,4,4,5,2,3,3,2,3,4,4,5,4,5,5,2,4,3,5,4,3,2,4,1,3,4,4,5,4,5,3,4,4,5,5,2,3,4,2,1,2,3,3,2,3,4,2,1,3,2,4,1,2,1,1,0
);

uniform usampler3D vertexIndices;
uniform usampler2D triangulation;

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
    //uint gnumPolys = uint(caseToNum[c[0]]);
    ivec3 cellPos = ivec3(int(x8_y8_z8_case8[0] >> 24) & 0xFF, 
                          int(x8_y8_z8_case8[0] >> 16) & 0xFF, 
                          int(x8_y8_z8_case8[0] >>  8) & 0xFF);
                          
    for(uint i = uint(0); i < uint(numPolys[0] * uint(3)); i += uint(1)){
        index = getIndex(cellPos, texelFetch(triangulation, ivec2(i, c[0]), 0).r);
        EmitVertex();
        EndPrimitive();
    }
}

