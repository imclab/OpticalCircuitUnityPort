﻿Shader "OpticalCircuit/Scene4"
{
Properties {
}
SubShader {
CGINCLUDE
#define zv(a) (-((1<<3)+64*2&a)>>8&1)
#define z(a) (-((1<<3)+64*1&a)>>8&1)
#include "OpticalCircuit.cginc"

ENDCG

    Pass {
CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#ifdef SHADER_API_OPENGL 
    #pragma glsl
#endif
ENDCG
    }
} 
}
