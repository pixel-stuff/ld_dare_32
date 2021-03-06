// Compiled shader for WebGL, uncompressed size: 144.8KB

// Skipping shader variants that would not be included into build of current scene.

Shader "Standard" {
Properties {
 _Color ("Color", Color) = (1,1,1,0)
 _MainTex ("Albedo", 2D) = "white" { }
 _Cutoff ("Alpha Cutoff", Range(0,1)) = 0.5
 _Glossiness ("Smoothness", Range(0,1)) = 0.5
[Gamma]  _Metallic ("Metallic", Range(0,1)) = 0
 _MetallicGlossMap ("Metallic", 2D) = "white" { }
 _BumpScale ("Scale", Float) = 1
 _BumpMap ("Normal Map", 2D) = "bump" { }
 _Parallax ("Height Scale", Range(0.005,0.08)) = 0.02
 _ParallaxMap ("Height Map", 2D) = "black" { }
 _OcclusionStrength ("Strength", Range(0,1)) = 1
 _OcclusionMap ("Occlusion", 2D) = "white" { }
 _EmissionColor ("Color", Color) = (0,0,0,1)
 _EmissionMap ("Emission", 2D) = "white" { }
 _DetailMask ("Detail Mask", 2D) = "white" { }
 _DetailAlbedoMap ("Detail Albedo x2", 2D) = "grey" { }
 _DetailNormalMapScale ("Scale", Float) = 1
 _DetailNormalMap ("Normal Map", 2D) = "bump" { }
[Enum(UV0,0,UV1,1)]  _UVSec ("UV Set for secondary textures", Float) = 0
[HideInInspector]  _EmissionScaleUI ("Scale", Float) = 0
[HideInInspector]  _EmissionColorUI ("Color", Color) = (1,1,1,1)
[HideInInspector]  _Mode ("__mode", Float) = 0
[HideInInspector]  _SrcBlend ("__src", Float) = 1
[HideInInspector]  _DstBlend ("__dst", Float) = 0
[HideInInspector]  _ZWrite ("__zw", Float) = 1
}
SubShader { 
 LOD 300
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 35871
Program "vp" {
}
Program "fp" {
}
 }
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Fog {
   Color (0,0,0,0)
  }
  Blend [_SrcBlend] One
  GpuProgramID 120105
Program "vp" {
}
Program "fp" {
}
 }
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 172554
Program "vp" {
}
Program "fp" {
}
 }
 Pass {
  Name "DEFERRED"
  Tags { "LIGHTMODE"="Deferred" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 219066
Program "vp" {
}
Program "fp" {
}
 }
}
SubShader { 
 LOD 150
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }


 // Stats for Vertex shader:
 //        gles : 49 avg math (46..51), 4 avg texture (4..5)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 361229
Program "vp" {
SubProgram "gles " {
// Stats: 46 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  highp vec4 tmpvar_8;
  tmpvar_8 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_9;
  tmpvar_9 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_10;
  texcoord_10.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_11;
  if ((_UVSec == 0.0)) {
    tmpvar_11 = tmpvar_2;
  } else {
    tmpvar_11 = tmpvar_3;
  };
  texcoord_10.zw = ((tmpvar_11 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_12;
  n_12 = (tmpvar_8.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_13;
  norm_13 = tmpvar_1;
  highp vec4 v_14;
  v_14.x = _World2Object[0].x;
  v_14.y = _World2Object[1].x;
  v_14.z = _World2Object[2].x;
  v_14.w = _World2Object[3].x;
  highp vec4 v_15;
  v_15.x = _World2Object[0].y;
  v_15.y = _World2Object[1].y;
  v_15.z = _World2Object[2].y;
  v_15.w = _World2Object[3].y;
  highp vec4 v_16;
  v_16.x = _World2Object[0].z;
  v_16.y = _World2Object[1].z;
  v_16.z = _World2Object[2].z;
  v_16.w = _World2Object[3].z;
  highp vec3 tmpvar_17;
  tmpvar_17 = normalize(((
    (v_14.xyz * norm_13.x)
   + 
    (v_15.xyz * norm_13.y)
  ) + (v_16.xyz * norm_13.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_17;
  highp vec4 tmpvar_18;
  tmpvar_18.w = 1.0;
  tmpvar_18.xyz = tmpvar_17;
  mediump vec4 normal_19;
  normal_19 = tmpvar_18;
  mediump vec3 x2_20;
  mediump vec3 x1_21;
  x1_21.x = dot (unity_SHAr, normal_19);
  x1_21.y = dot (unity_SHAg, normal_19);
  x1_21.z = dot (unity_SHAb, normal_19);
  mediump vec4 tmpvar_22;
  tmpvar_22 = (normal_19.xyzz * normal_19.yzzx);
  x2_20.x = dot (unity_SHBr, tmpvar_22);
  x2_20.y = dot (unity_SHBg, tmpvar_22);
  x2_20.z = dot (unity_SHBb, tmpvar_22);
  tmpvar_7.xyz = ((x2_20 + (unity_SHC.xyz * 
    ((normal_19.x * normal_19.x) - (normal_19.y * normal_19.y))
  )) + x1_21);
  gl_Position = tmpvar_9;
  xlv_TEXCOORD0 = texcoord_10;
  xlv_TEXCOORD1 = normalize(n_12);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec4 c_1;
  mediump vec3 tmpvar_2;
  tmpvar_2 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_3;
  cse_3 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_4;
  tmpvar_4 = (_Color.xyz * cse_3.xyz);
  mediump vec3 tmpvar_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_4, vec3(_Metallic));
  mediump float tmpvar_7;
  tmpvar_7 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_5 = (tmpvar_4 * tmpvar_7);
  mediump vec3 tmpvar_8;
  lowp vec3 tmpvar_9;
  tmpvar_9 = _LightColor0.xyz;
  tmpvar_8 = tmpvar_9;
  mediump float tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_10 = tmpvar_11.y;
  highp vec3 tmpvar_12;
  highp vec4 tmpvar_13;
  mediump vec3 cse_14;
  cse_14 = -(xlv_TEXCOORD1);
  tmpvar_12 = cse_14;
  tmpvar_13 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_15;
  mediump vec3 worldNormal_16;
  highp vec3 tmpvar_17;
  highp vec3 I_18;
  I_18 = -(tmpvar_12);
  tmpvar_17 = (I_18 - (2.0 * (
    dot (tmpvar_2, I_18)
   * tmpvar_2)));
  worldNormal_16 = tmpvar_17;
  mediump vec4 hdr_19;
  hdr_19 = tmpvar_13;
  highp float mip_20;
  mediump float tmpvar_21;
  mediump float cse_22;
  cse_22 = (1.0 - _Glossiness);
  tmpvar_21 = (cse_22 * 7.0);
  mip_20 = tmpvar_21;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = worldNormal_16;
  tmpvar_23.w = mip_20;
  lowp vec4 tmpvar_24;
  tmpvar_24 = textureCube (unity_SpecCube0, tmpvar_23.xyz, mip_20);
  mediump vec4 tmpvar_25;
  tmpvar_25 = tmpvar_24;
  tmpvar_15 = ((tmpvar_25.w * hdr_19.x) * tmpvar_25.xyz);
  tmpvar_15 = (tmpvar_15 * tmpvar_10);
  mediump vec2 tmpvar_26;
  tmpvar_26.x = dot ((cse_14 - (2.0 * 
    (dot (tmpvar_2, cse_14) * tmpvar_2)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_26.y = (1.0 - clamp (dot (tmpvar_2, cse_14), 0.0, 1.0));
  mediump vec2 tmpvar_27;
  tmpvar_27 = (((tmpvar_26 * tmpvar_26) * tmpvar_26) * tmpvar_26);
  mediump vec2 tmpvar_28;
  tmpvar_28.x = tmpvar_27.x;
  tmpvar_28.y = cse_22;
  lowp vec4 tmpvar_29;
  tmpvar_29 = texture2D (unity_NHxRoughness, tmpvar_28);
  mediump vec3 tmpvar_30;
  tmpvar_30 = (((
    ((tmpvar_5 + ((tmpvar_29.w * 16.0) * tmpvar_6)) * tmpvar_8)
   * 
    clamp (dot (tmpvar_2, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_10)
   * tmpvar_5)) + (tmpvar_15 * mix (tmpvar_6, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_7)), 0.0, 1.0)
  ), tmpvar_27.yyy)));
  mediump vec4 tmpvar_31;
  tmpvar_31.w = 1.0;
  tmpvar_31.xyz = tmpvar_30;
  c_1.w = tmpvar_31.w;
  c_1.xyz = tmpvar_30;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_32;
  xlat_varoutput_32.xyz = c_1.xyz;
  xlat_varoutput_32.w = 1.0;
  gl_FragData[0] = xlat_varoutput_32;
}



#endif"
}
SubProgram "gles " {
// Stats: 51 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  highp vec4 tmpvar_9;
  tmpvar_9 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_10;
  tmpvar_10 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_11;
  texcoord_11.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_12;
  if ((_UVSec == 0.0)) {
    tmpvar_12 = tmpvar_2;
  } else {
    tmpvar_12 = tmpvar_3;
  };
  texcoord_11.zw = ((tmpvar_12 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_13;
  n_13 = (tmpvar_9.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_14;
  norm_14 = tmpvar_1;
  highp vec4 v_15;
  v_15.x = _World2Object[0].x;
  v_15.y = _World2Object[1].x;
  v_15.z = _World2Object[2].x;
  v_15.w = _World2Object[3].x;
  highp vec4 v_16;
  v_16.x = _World2Object[0].y;
  v_16.y = _World2Object[1].y;
  v_16.z = _World2Object[2].y;
  v_16.w = _World2Object[3].y;
  highp vec4 v_17;
  v_17.x = _World2Object[0].z;
  v_17.y = _World2Object[1].z;
  v_17.z = _World2Object[2].z;
  v_17.w = _World2Object[3].z;
  highp vec3 tmpvar_18;
  tmpvar_18 = normalize(((
    (v_15.xyz * norm_14.x)
   + 
    (v_16.xyz * norm_14.y)
  ) + (v_17.xyz * norm_14.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_18;
  highp vec4 tmpvar_19;
  tmpvar_19 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_8 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20.w = 1.0;
  tmpvar_20.xyz = tmpvar_18;
  mediump vec4 normal_21;
  normal_21 = tmpvar_20;
  mediump vec3 x2_22;
  mediump vec3 x1_23;
  x1_23.x = dot (unity_SHAr, normal_21);
  x1_23.y = dot (unity_SHAg, normal_21);
  x1_23.z = dot (unity_SHAb, normal_21);
  mediump vec4 tmpvar_24;
  tmpvar_24 = (normal_21.xyzz * normal_21.yzzx);
  x2_22.x = dot (unity_SHBr, tmpvar_24);
  x2_22.y = dot (unity_SHBg, tmpvar_24);
  x2_22.z = dot (unity_SHBb, tmpvar_24);
  tmpvar_7.xyz = ((x2_22 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )) + x1_23);
  gl_Position = tmpvar_10;
  xlv_TEXCOORD0 = texcoord_11;
  xlv_TEXCOORD1 = normalize(n_13);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
  xlv_TEXCOORD6 = tmpvar_8;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 _LightShadowData;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
uniform sampler2D _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec4 c_1;
  mediump float atten_2;
  mediump vec3 tmpvar_3;
  tmpvar_3 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_4;
  cse_4 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_5;
  tmpvar_5 = (_Color.xyz * cse_4.xyz);
  mediump vec3 tmpvar_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_5, vec3(_Metallic));
  mediump float tmpvar_8;
  tmpvar_8 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_6 = (tmpvar_5 * tmpvar_8);
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  lowp float tmpvar_11;
  mediump float dist_12;
  lowp float tmpvar_13;
  tmpvar_13 = texture2DProj (_ShadowMapTexture, xlv_TEXCOORD6).x;
  dist_12 = tmpvar_13;
  mediump float tmpvar_14;
  tmpvar_14 = max (float((dist_12 > 
    (xlv_TEXCOORD6.z / xlv_TEXCOORD6.w)
  )), _LightShadowData.x);
  tmpvar_11 = tmpvar_14;
  atten_2 = tmpvar_11;
  mediump float tmpvar_15;
  lowp vec4 tmpvar_16;
  tmpvar_16 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_15 = tmpvar_16.y;
  highp vec3 tmpvar_17;
  highp vec4 tmpvar_18;
  mediump vec3 cse_19;
  cse_19 = -(xlv_TEXCOORD1);
  tmpvar_17 = cse_19;
  tmpvar_18 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_20;
  mediump vec3 worldNormal_21;
  highp vec3 tmpvar_22;
  highp vec3 I_23;
  I_23 = -(tmpvar_17);
  tmpvar_22 = (I_23 - (2.0 * (
    dot (tmpvar_3, I_23)
   * tmpvar_3)));
  worldNormal_21 = tmpvar_22;
  mediump vec4 hdr_24;
  hdr_24 = tmpvar_18;
  highp float mip_25;
  mediump float tmpvar_26;
  mediump float cse_27;
  cse_27 = (1.0 - _Glossiness);
  tmpvar_26 = (cse_27 * 7.0);
  mip_25 = tmpvar_26;
  highp vec4 tmpvar_28;
  tmpvar_28.xyz = worldNormal_21;
  tmpvar_28.w = mip_25;
  lowp vec4 tmpvar_29;
  tmpvar_29 = textureCube (unity_SpecCube0, tmpvar_28.xyz, mip_25);
  mediump vec4 tmpvar_30;
  tmpvar_30 = tmpvar_29;
  tmpvar_20 = ((tmpvar_30.w * hdr_24.x) * tmpvar_30.xyz);
  tmpvar_20 = (tmpvar_20 * tmpvar_15);
  mediump vec2 tmpvar_31;
  tmpvar_31.x = dot ((cse_19 - (2.0 * 
    (dot (tmpvar_3, cse_19) * tmpvar_3)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_31.y = (1.0 - clamp (dot (tmpvar_3, cse_19), 0.0, 1.0));
  mediump vec2 tmpvar_32;
  tmpvar_32 = (((tmpvar_31 * tmpvar_31) * tmpvar_31) * tmpvar_31);
  mediump vec2 tmpvar_33;
  tmpvar_33.x = tmpvar_32.x;
  tmpvar_33.y = cse_27;
  lowp vec4 tmpvar_34;
  tmpvar_34 = texture2D (unity_NHxRoughness, tmpvar_33);
  mediump vec3 tmpvar_35;
  tmpvar_35 = (((
    ((tmpvar_6 + ((tmpvar_34.w * 16.0) * tmpvar_7)) * (tmpvar_9 * atten_2))
   * 
    clamp (dot (tmpvar_3, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_15)
   * tmpvar_6)) + (tmpvar_20 * mix (tmpvar_7, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_8)), 0.0, 1.0)
  ), tmpvar_32.yyy)));
  mediump vec4 tmpvar_36;
  tmpvar_36.w = 1.0;
  tmpvar_36.xyz = tmpvar_35;
  c_1.w = tmpvar_36.w;
  c_1.xyz = tmpvar_35;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_37;
  xlat_varoutput_37.xyz = c_1.xyz;
  xlat_varoutput_37.w = 1.0;
  gl_FragData[0] = xlat_varoutput_37;
}



#endif"
}
SubProgram "gles " {
// Stats: 46 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  highp vec4 tmpvar_8;
  tmpvar_8 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_9;
  tmpvar_9 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_10;
  texcoord_10.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_11;
  if ((_UVSec == 0.0)) {
    tmpvar_11 = tmpvar_2;
  } else {
    tmpvar_11 = tmpvar_3;
  };
  texcoord_10.zw = ((tmpvar_11 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_12;
  n_12 = (tmpvar_8.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_13;
  norm_13 = tmpvar_1;
  highp vec4 v_14;
  v_14.x = _World2Object[0].x;
  v_14.y = _World2Object[1].x;
  v_14.z = _World2Object[2].x;
  v_14.w = _World2Object[3].x;
  highp vec4 v_15;
  v_15.x = _World2Object[0].y;
  v_15.y = _World2Object[1].y;
  v_15.z = _World2Object[2].y;
  v_15.w = _World2Object[3].y;
  highp vec4 v_16;
  v_16.x = _World2Object[0].z;
  v_16.y = _World2Object[1].z;
  v_16.z = _World2Object[2].z;
  v_16.w = _World2Object[3].z;
  highp vec3 tmpvar_17;
  tmpvar_17 = normalize(((
    (v_14.xyz * norm_13.x)
   + 
    (v_15.xyz * norm_13.y)
  ) + (v_16.xyz * norm_13.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_17;
  highp vec4 tmpvar_18;
  tmpvar_18.w = 1.0;
  tmpvar_18.xyz = tmpvar_17;
  mediump vec4 normal_19;
  normal_19 = tmpvar_18;
  mediump vec3 x2_20;
  mediump vec3 x1_21;
  x1_21.x = dot (unity_SHAr, normal_19);
  x1_21.y = dot (unity_SHAg, normal_19);
  x1_21.z = dot (unity_SHAb, normal_19);
  mediump vec4 tmpvar_22;
  tmpvar_22 = (normal_19.xyzz * normal_19.yzzx);
  x2_20.x = dot (unity_SHBr, tmpvar_22);
  x2_20.y = dot (unity_SHBg, tmpvar_22);
  x2_20.z = dot (unity_SHBb, tmpvar_22);
  tmpvar_7.xyz = ((x2_20 + (unity_SHC.xyz * 
    ((normal_19.x * normal_19.x) - (normal_19.y * normal_19.y))
  )) + x1_21);
  highp vec3 lightColor0_23;
  lightColor0_23 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_24;
  lightColor1_24 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_25;
  lightColor2_25 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_26;
  lightColor3_26 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_27;
  lightAttenSq_27 = unity_4LightAtten0;
  highp vec4 tmpvar_28;
  tmpvar_28 = (unity_4LightPosX0 - tmpvar_8.x);
  highp vec4 tmpvar_29;
  tmpvar_29 = (unity_4LightPosY0 - tmpvar_8.y);
  highp vec4 tmpvar_30;
  tmpvar_30 = (unity_4LightPosZ0 - tmpvar_8.z);
  highp vec4 tmpvar_31;
  tmpvar_31 = (((tmpvar_28 * tmpvar_28) + (tmpvar_29 * tmpvar_29)) + (tmpvar_30 * tmpvar_30));
  highp vec4 tmpvar_32;
  tmpvar_32 = (max (vec4(0.0, 0.0, 0.0, 0.0), (
    (((tmpvar_28 * tmpvar_17.x) + (tmpvar_29 * tmpvar_17.y)) + (tmpvar_30 * tmpvar_17.z))
   * 
    inversesqrt(tmpvar_31)
  )) * (1.0/((1.0 + 
    (tmpvar_31 * lightAttenSq_27)
  ))));
  highp vec3 tmpvar_33;
  tmpvar_33 = (tmpvar_7.xyz + ((
    ((lightColor0_23 * tmpvar_32.x) + (lightColor1_24 * tmpvar_32.y))
   + 
    (lightColor2_25 * tmpvar_32.z)
  ) + (lightColor3_26 * tmpvar_32.w)));
  tmpvar_7.xyz = tmpvar_33;
  gl_Position = tmpvar_9;
  xlv_TEXCOORD0 = texcoord_10;
  xlv_TEXCOORD1 = normalize(n_12);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec4 c_1;
  mediump vec3 tmpvar_2;
  tmpvar_2 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_3;
  cse_3 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_4;
  tmpvar_4 = (_Color.xyz * cse_3.xyz);
  mediump vec3 tmpvar_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_4, vec3(_Metallic));
  mediump float tmpvar_7;
  tmpvar_7 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_5 = (tmpvar_4 * tmpvar_7);
  mediump vec3 tmpvar_8;
  lowp vec3 tmpvar_9;
  tmpvar_9 = _LightColor0.xyz;
  tmpvar_8 = tmpvar_9;
  mediump float tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_10 = tmpvar_11.y;
  highp vec3 tmpvar_12;
  highp vec4 tmpvar_13;
  mediump vec3 cse_14;
  cse_14 = -(xlv_TEXCOORD1);
  tmpvar_12 = cse_14;
  tmpvar_13 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_15;
  mediump vec3 worldNormal_16;
  highp vec3 tmpvar_17;
  highp vec3 I_18;
  I_18 = -(tmpvar_12);
  tmpvar_17 = (I_18 - (2.0 * (
    dot (tmpvar_2, I_18)
   * tmpvar_2)));
  worldNormal_16 = tmpvar_17;
  mediump vec4 hdr_19;
  hdr_19 = tmpvar_13;
  highp float mip_20;
  mediump float tmpvar_21;
  mediump float cse_22;
  cse_22 = (1.0 - _Glossiness);
  tmpvar_21 = (cse_22 * 7.0);
  mip_20 = tmpvar_21;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = worldNormal_16;
  tmpvar_23.w = mip_20;
  lowp vec4 tmpvar_24;
  tmpvar_24 = textureCube (unity_SpecCube0, tmpvar_23.xyz, mip_20);
  mediump vec4 tmpvar_25;
  tmpvar_25 = tmpvar_24;
  tmpvar_15 = ((tmpvar_25.w * hdr_19.x) * tmpvar_25.xyz);
  tmpvar_15 = (tmpvar_15 * tmpvar_10);
  mediump vec2 tmpvar_26;
  tmpvar_26.x = dot ((cse_14 - (2.0 * 
    (dot (tmpvar_2, cse_14) * tmpvar_2)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_26.y = (1.0 - clamp (dot (tmpvar_2, cse_14), 0.0, 1.0));
  mediump vec2 tmpvar_27;
  tmpvar_27 = (((tmpvar_26 * tmpvar_26) * tmpvar_26) * tmpvar_26);
  mediump vec2 tmpvar_28;
  tmpvar_28.x = tmpvar_27.x;
  tmpvar_28.y = cse_22;
  lowp vec4 tmpvar_29;
  tmpvar_29 = texture2D (unity_NHxRoughness, tmpvar_28);
  mediump vec3 tmpvar_30;
  tmpvar_30 = (((
    ((tmpvar_5 + ((tmpvar_29.w * 16.0) * tmpvar_6)) * tmpvar_8)
   * 
    clamp (dot (tmpvar_2, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_10)
   * tmpvar_5)) + (tmpvar_15 * mix (tmpvar_6, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_7)), 0.0, 1.0)
  ), tmpvar_27.yyy)));
  mediump vec4 tmpvar_31;
  tmpvar_31.w = 1.0;
  tmpvar_31.xyz = tmpvar_30;
  c_1.w = tmpvar_31.w;
  c_1.xyz = tmpvar_30;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_32;
  xlat_varoutput_32.xyz = c_1.xyz;
  xlat_varoutput_32.w = 1.0;
  gl_FragData[0] = xlat_varoutput_32;
}



#endif"
}
SubProgram "gles " {
// Stats: 51 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  highp vec4 tmpvar_9;
  tmpvar_9 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_10;
  tmpvar_10 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_11;
  texcoord_11.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_12;
  if ((_UVSec == 0.0)) {
    tmpvar_12 = tmpvar_2;
  } else {
    tmpvar_12 = tmpvar_3;
  };
  texcoord_11.zw = ((tmpvar_12 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_13;
  n_13 = (tmpvar_9.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_14;
  norm_14 = tmpvar_1;
  highp vec4 v_15;
  v_15.x = _World2Object[0].x;
  v_15.y = _World2Object[1].x;
  v_15.z = _World2Object[2].x;
  v_15.w = _World2Object[3].x;
  highp vec4 v_16;
  v_16.x = _World2Object[0].y;
  v_16.y = _World2Object[1].y;
  v_16.z = _World2Object[2].y;
  v_16.w = _World2Object[3].y;
  highp vec4 v_17;
  v_17.x = _World2Object[0].z;
  v_17.y = _World2Object[1].z;
  v_17.z = _World2Object[2].z;
  v_17.w = _World2Object[3].z;
  highp vec3 tmpvar_18;
  tmpvar_18 = normalize(((
    (v_15.xyz * norm_14.x)
   + 
    (v_16.xyz * norm_14.y)
  ) + (v_17.xyz * norm_14.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_18;
  highp vec4 tmpvar_19;
  tmpvar_19 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_8 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20.w = 1.0;
  tmpvar_20.xyz = tmpvar_18;
  mediump vec4 normal_21;
  normal_21 = tmpvar_20;
  mediump vec3 x2_22;
  mediump vec3 x1_23;
  x1_23.x = dot (unity_SHAr, normal_21);
  x1_23.y = dot (unity_SHAg, normal_21);
  x1_23.z = dot (unity_SHAb, normal_21);
  mediump vec4 tmpvar_24;
  tmpvar_24 = (normal_21.xyzz * normal_21.yzzx);
  x2_22.x = dot (unity_SHBr, tmpvar_24);
  x2_22.y = dot (unity_SHBg, tmpvar_24);
  x2_22.z = dot (unity_SHBb, tmpvar_24);
  tmpvar_7.xyz = ((x2_22 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )) + x1_23);
  highp vec3 lightColor0_25;
  lightColor0_25 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_26;
  lightColor1_26 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_27;
  lightColor2_27 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_28;
  lightColor3_28 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_29;
  lightAttenSq_29 = unity_4LightAtten0;
  highp vec4 tmpvar_30;
  tmpvar_30 = (unity_4LightPosX0 - tmpvar_9.x);
  highp vec4 tmpvar_31;
  tmpvar_31 = (unity_4LightPosY0 - tmpvar_9.y);
  highp vec4 tmpvar_32;
  tmpvar_32 = (unity_4LightPosZ0 - tmpvar_9.z);
  highp vec4 tmpvar_33;
  tmpvar_33 = (((tmpvar_30 * tmpvar_30) + (tmpvar_31 * tmpvar_31)) + (tmpvar_32 * tmpvar_32));
  highp vec4 tmpvar_34;
  tmpvar_34 = (max (vec4(0.0, 0.0, 0.0, 0.0), (
    (((tmpvar_30 * tmpvar_18.x) + (tmpvar_31 * tmpvar_18.y)) + (tmpvar_32 * tmpvar_18.z))
   * 
    inversesqrt(tmpvar_33)
  )) * (1.0/((1.0 + 
    (tmpvar_33 * lightAttenSq_29)
  ))));
  highp vec3 tmpvar_35;
  tmpvar_35 = (tmpvar_7.xyz + ((
    ((lightColor0_25 * tmpvar_34.x) + (lightColor1_26 * tmpvar_34.y))
   + 
    (lightColor2_27 * tmpvar_34.z)
  ) + (lightColor3_28 * tmpvar_34.w)));
  tmpvar_7.xyz = tmpvar_35;
  gl_Position = tmpvar_10;
  xlv_TEXCOORD0 = texcoord_11;
  xlv_TEXCOORD1 = normalize(n_13);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
  xlv_TEXCOORD6 = tmpvar_8;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 _LightShadowData;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
uniform sampler2D _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec4 c_1;
  mediump float atten_2;
  mediump vec3 tmpvar_3;
  tmpvar_3 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_4;
  cse_4 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_5;
  tmpvar_5 = (_Color.xyz * cse_4.xyz);
  mediump vec3 tmpvar_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_5, vec3(_Metallic));
  mediump float tmpvar_8;
  tmpvar_8 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_6 = (tmpvar_5 * tmpvar_8);
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  lowp float tmpvar_11;
  mediump float dist_12;
  lowp float tmpvar_13;
  tmpvar_13 = texture2DProj (_ShadowMapTexture, xlv_TEXCOORD6).x;
  dist_12 = tmpvar_13;
  mediump float tmpvar_14;
  tmpvar_14 = max (float((dist_12 > 
    (xlv_TEXCOORD6.z / xlv_TEXCOORD6.w)
  )), _LightShadowData.x);
  tmpvar_11 = tmpvar_14;
  atten_2 = tmpvar_11;
  mediump float tmpvar_15;
  lowp vec4 tmpvar_16;
  tmpvar_16 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_15 = tmpvar_16.y;
  highp vec3 tmpvar_17;
  highp vec4 tmpvar_18;
  mediump vec3 cse_19;
  cse_19 = -(xlv_TEXCOORD1);
  tmpvar_17 = cse_19;
  tmpvar_18 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_20;
  mediump vec3 worldNormal_21;
  highp vec3 tmpvar_22;
  highp vec3 I_23;
  I_23 = -(tmpvar_17);
  tmpvar_22 = (I_23 - (2.0 * (
    dot (tmpvar_3, I_23)
   * tmpvar_3)));
  worldNormal_21 = tmpvar_22;
  mediump vec4 hdr_24;
  hdr_24 = tmpvar_18;
  highp float mip_25;
  mediump float tmpvar_26;
  mediump float cse_27;
  cse_27 = (1.0 - _Glossiness);
  tmpvar_26 = (cse_27 * 7.0);
  mip_25 = tmpvar_26;
  highp vec4 tmpvar_28;
  tmpvar_28.xyz = worldNormal_21;
  tmpvar_28.w = mip_25;
  lowp vec4 tmpvar_29;
  tmpvar_29 = textureCube (unity_SpecCube0, tmpvar_28.xyz, mip_25);
  mediump vec4 tmpvar_30;
  tmpvar_30 = tmpvar_29;
  tmpvar_20 = ((tmpvar_30.w * hdr_24.x) * tmpvar_30.xyz);
  tmpvar_20 = (tmpvar_20 * tmpvar_15);
  mediump vec2 tmpvar_31;
  tmpvar_31.x = dot ((cse_19 - (2.0 * 
    (dot (tmpvar_3, cse_19) * tmpvar_3)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_31.y = (1.0 - clamp (dot (tmpvar_3, cse_19), 0.0, 1.0));
  mediump vec2 tmpvar_32;
  tmpvar_32 = (((tmpvar_31 * tmpvar_31) * tmpvar_31) * tmpvar_31);
  mediump vec2 tmpvar_33;
  tmpvar_33.x = tmpvar_32.x;
  tmpvar_33.y = cse_27;
  lowp vec4 tmpvar_34;
  tmpvar_34 = texture2D (unity_NHxRoughness, tmpvar_33);
  mediump vec3 tmpvar_35;
  tmpvar_35 = (((
    ((tmpvar_6 + ((tmpvar_34.w * 16.0) * tmpvar_7)) * (tmpvar_9 * atten_2))
   * 
    clamp (dot (tmpvar_3, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_15)
   * tmpvar_6)) + (tmpvar_20 * mix (tmpvar_7, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_8)), 0.0, 1.0)
  ), tmpvar_32.yyy)));
  mediump vec4 tmpvar_36;
  tmpvar_36.w = 1.0;
  tmpvar_36.xyz = tmpvar_35;
  c_1.w = tmpvar_36.w;
  c_1.xyz = tmpvar_35;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_37;
  xlat_varoutput_37.xyz = c_1.xyz;
  xlat_varoutput_37.w = 1.0;
  gl_FragData[0] = xlat_varoutput_37;
}



#endif"
}
SubProgram "gles " {
// Stats: 50 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES


#ifdef VERTEX

#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  highp vec4 tmpvar_9;
  tmpvar_9 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_10;
  tmpvar_10 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_11;
  texcoord_11.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_12;
  if ((_UVSec == 0.0)) {
    tmpvar_12 = tmpvar_2;
  } else {
    tmpvar_12 = tmpvar_3;
  };
  texcoord_11.zw = ((tmpvar_12 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_13;
  n_13 = (tmpvar_9.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_14;
  norm_14 = tmpvar_1;
  highp vec4 v_15;
  v_15.x = _World2Object[0].x;
  v_15.y = _World2Object[1].x;
  v_15.z = _World2Object[2].x;
  v_15.w = _World2Object[3].x;
  highp vec4 v_16;
  v_16.x = _World2Object[0].y;
  v_16.y = _World2Object[1].y;
  v_16.z = _World2Object[2].y;
  v_16.w = _World2Object[3].y;
  highp vec4 v_17;
  v_17.x = _World2Object[0].z;
  v_17.y = _World2Object[1].z;
  v_17.z = _World2Object[2].z;
  v_17.w = _World2Object[3].z;
  highp vec3 tmpvar_18;
  tmpvar_18 = normalize(((
    (v_15.xyz * norm_14.x)
   + 
    (v_16.xyz * norm_14.y)
  ) + (v_17.xyz * norm_14.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_18;
  highp vec4 tmpvar_19;
  tmpvar_19 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_8 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20.w = 1.0;
  tmpvar_20.xyz = tmpvar_18;
  mediump vec4 normal_21;
  normal_21 = tmpvar_20;
  mediump vec3 x2_22;
  mediump vec3 x1_23;
  x1_23.x = dot (unity_SHAr, normal_21);
  x1_23.y = dot (unity_SHAg, normal_21);
  x1_23.z = dot (unity_SHAb, normal_21);
  mediump vec4 tmpvar_24;
  tmpvar_24 = (normal_21.xyzz * normal_21.yzzx);
  x2_22.x = dot (unity_SHBr, tmpvar_24);
  x2_22.y = dot (unity_SHBg, tmpvar_24);
  x2_22.z = dot (unity_SHBb, tmpvar_24);
  tmpvar_7.xyz = ((x2_22 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )) + x1_23);
  gl_Position = tmpvar_10;
  xlv_TEXCOORD0 = texcoord_11;
  xlv_TEXCOORD1 = normalize(n_13);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
  xlv_TEXCOORD6 = tmpvar_8;
}



#endif
#ifdef FRAGMENT

#extension GL_EXT_shadow_samplers : enable
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 _LightShadowData;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
uniform lowp sampler2DShadow _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec4 c_1;
  mediump float atten_2;
  mediump vec3 tmpvar_3;
  tmpvar_3 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_4;
  cse_4 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_5;
  tmpvar_5 = (_Color.xyz * cse_4.xyz);
  mediump vec3 tmpvar_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_5, vec3(_Metallic));
  mediump float tmpvar_8;
  tmpvar_8 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_6 = (tmpvar_5 * tmpvar_8);
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  lowp float shadow_11;
  lowp float tmpvar_12;
  tmpvar_12 = shadow2DEXT (_ShadowMapTexture, xlv_TEXCOORD6.xyz);
  mediump float tmpvar_13;
  tmpvar_13 = (_LightShadowData.x + (tmpvar_12 * (1.0 - _LightShadowData.x)));
  shadow_11 = tmpvar_13;
  atten_2 = shadow_11;
  mediump float tmpvar_14;
  lowp vec4 tmpvar_15;
  tmpvar_15 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_14 = tmpvar_15.y;
  highp vec3 tmpvar_16;
  highp vec4 tmpvar_17;
  mediump vec3 cse_18;
  cse_18 = -(xlv_TEXCOORD1);
  tmpvar_16 = cse_18;
  tmpvar_17 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_19;
  mediump vec3 worldNormal_20;
  highp vec3 tmpvar_21;
  highp vec3 I_22;
  I_22 = -(tmpvar_16);
  tmpvar_21 = (I_22 - (2.0 * (
    dot (tmpvar_3, I_22)
   * tmpvar_3)));
  worldNormal_20 = tmpvar_21;
  mediump vec4 hdr_23;
  hdr_23 = tmpvar_17;
  highp float mip_24;
  mediump float tmpvar_25;
  mediump float cse_26;
  cse_26 = (1.0 - _Glossiness);
  tmpvar_25 = (cse_26 * 7.0);
  mip_24 = tmpvar_25;
  highp vec4 tmpvar_27;
  tmpvar_27.xyz = worldNormal_20;
  tmpvar_27.w = mip_24;
  lowp vec4 tmpvar_28;
  tmpvar_28 = textureCube (unity_SpecCube0, tmpvar_27.xyz, mip_24);
  mediump vec4 tmpvar_29;
  tmpvar_29 = tmpvar_28;
  tmpvar_19 = ((tmpvar_29.w * hdr_23.x) * tmpvar_29.xyz);
  tmpvar_19 = (tmpvar_19 * tmpvar_14);
  mediump vec2 tmpvar_30;
  tmpvar_30.x = dot ((cse_18 - (2.0 * 
    (dot (tmpvar_3, cse_18) * tmpvar_3)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_30.y = (1.0 - clamp (dot (tmpvar_3, cse_18), 0.0, 1.0));
  mediump vec2 tmpvar_31;
  tmpvar_31 = (((tmpvar_30 * tmpvar_30) * tmpvar_30) * tmpvar_30);
  mediump vec2 tmpvar_32;
  tmpvar_32.x = tmpvar_31.x;
  tmpvar_32.y = cse_26;
  lowp vec4 tmpvar_33;
  tmpvar_33 = texture2D (unity_NHxRoughness, tmpvar_32);
  mediump vec3 tmpvar_34;
  tmpvar_34 = (((
    ((tmpvar_6 + ((tmpvar_33.w * 16.0) * tmpvar_7)) * (tmpvar_9 * atten_2))
   * 
    clamp (dot (tmpvar_3, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_14)
   * tmpvar_6)) + (tmpvar_19 * mix (tmpvar_7, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_8)), 0.0, 1.0)
  ), tmpvar_31.yyy)));
  mediump vec4 tmpvar_35;
  tmpvar_35.w = 1.0;
  tmpvar_35.xyz = tmpvar_34;
  c_1.w = tmpvar_35.w;
  c_1.xyz = tmpvar_34;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_36;
  xlat_varoutput_36.xyz = c_1.xyz;
  xlat_varoutput_36.w = 1.0;
  gl_FragData[0] = xlat_varoutput_36;
}



#endif"
}
SubProgram "gles " {
// Stats: 50 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
"!!GLES


#ifdef VERTEX

#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  mediump vec4 tmpvar_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  highp vec4 tmpvar_9;
  tmpvar_9 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_10;
  tmpvar_10 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_11;
  texcoord_11.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_12;
  if ((_UVSec == 0.0)) {
    tmpvar_12 = tmpvar_2;
  } else {
    tmpvar_12 = tmpvar_3;
  };
  texcoord_11.zw = ((tmpvar_12 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_13;
  n_13 = (tmpvar_9.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_14;
  norm_14 = tmpvar_1;
  highp vec4 v_15;
  v_15.x = _World2Object[0].x;
  v_15.y = _World2Object[1].x;
  v_15.z = _World2Object[2].x;
  v_15.w = _World2Object[3].x;
  highp vec4 v_16;
  v_16.x = _World2Object[0].y;
  v_16.y = _World2Object[1].y;
  v_16.z = _World2Object[2].y;
  v_16.w = _World2Object[3].y;
  highp vec4 v_17;
  v_17.x = _World2Object[0].z;
  v_17.y = _World2Object[1].z;
  v_17.z = _World2Object[2].z;
  v_17.w = _World2Object[3].z;
  highp vec3 tmpvar_18;
  tmpvar_18 = normalize(((
    (v_15.xyz * norm_14.x)
   + 
    (v_16.xyz * norm_14.y)
  ) + (v_17.xyz * norm_14.z)));
  tmpvar_4.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_5.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_6.xyz = tmpvar_18;
  highp vec4 tmpvar_19;
  tmpvar_19 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_8 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20.w = 1.0;
  tmpvar_20.xyz = tmpvar_18;
  mediump vec4 normal_21;
  normal_21 = tmpvar_20;
  mediump vec3 x2_22;
  mediump vec3 x1_23;
  x1_23.x = dot (unity_SHAr, normal_21);
  x1_23.y = dot (unity_SHAg, normal_21);
  x1_23.z = dot (unity_SHAb, normal_21);
  mediump vec4 tmpvar_24;
  tmpvar_24 = (normal_21.xyzz * normal_21.yzzx);
  x2_22.x = dot (unity_SHBr, tmpvar_24);
  x2_22.y = dot (unity_SHBg, tmpvar_24);
  x2_22.z = dot (unity_SHBb, tmpvar_24);
  tmpvar_7.xyz = ((x2_22 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )) + x1_23);
  highp vec3 lightColor0_25;
  lightColor0_25 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_26;
  lightColor1_26 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_27;
  lightColor2_27 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_28;
  lightColor3_28 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_29;
  lightAttenSq_29 = unity_4LightAtten0;
  highp vec4 tmpvar_30;
  tmpvar_30 = (unity_4LightPosX0 - tmpvar_9.x);
  highp vec4 tmpvar_31;
  tmpvar_31 = (unity_4LightPosY0 - tmpvar_9.y);
  highp vec4 tmpvar_32;
  tmpvar_32 = (unity_4LightPosZ0 - tmpvar_9.z);
  highp vec4 tmpvar_33;
  tmpvar_33 = (((tmpvar_30 * tmpvar_30) + (tmpvar_31 * tmpvar_31)) + (tmpvar_32 * tmpvar_32));
  highp vec4 tmpvar_34;
  tmpvar_34 = (max (vec4(0.0, 0.0, 0.0, 0.0), (
    (((tmpvar_30 * tmpvar_18.x) + (tmpvar_31 * tmpvar_18.y)) + (tmpvar_32 * tmpvar_18.z))
   * 
    inversesqrt(tmpvar_33)
  )) * (1.0/((1.0 + 
    (tmpvar_33 * lightAttenSq_29)
  ))));
  highp vec3 tmpvar_35;
  tmpvar_35 = (tmpvar_7.xyz + ((
    ((lightColor0_25 * tmpvar_34.x) + (lightColor1_26 * tmpvar_34.y))
   + 
    (lightColor2_27 * tmpvar_34.z)
  ) + (lightColor3_28 * tmpvar_34.w)));
  tmpvar_7.xyz = tmpvar_35;
  gl_Position = tmpvar_10;
  xlv_TEXCOORD0 = texcoord_11;
  xlv_TEXCOORD1 = normalize(n_13);
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD2_1 = tmpvar_5;
  xlv_TEXCOORD2_2 = tmpvar_6;
  xlv_TEXCOORD5 = tmpvar_7;
  xlv_TEXCOORD6 = tmpvar_8;
}



#endif
#ifdef FRAGMENT

#extension GL_EXT_shadow_samplers : enable
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 _LightShadowData;
uniform lowp samplerCube unity_SpecCube0;
uniform mediump vec4 unity_SpecCube0_HDR;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _OcclusionMap;
uniform lowp sampler2DShadow _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec4 c_1;
  mediump float atten_2;
  mediump vec3 tmpvar_3;
  tmpvar_3 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_4;
  cse_4 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_5;
  tmpvar_5 = (_Color.xyz * cse_4.xyz);
  mediump vec3 tmpvar_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_5, vec3(_Metallic));
  mediump float tmpvar_8;
  tmpvar_8 = (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w));
  tmpvar_6 = (tmpvar_5 * tmpvar_8);
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  lowp float shadow_11;
  lowp float tmpvar_12;
  tmpvar_12 = shadow2DEXT (_ShadowMapTexture, xlv_TEXCOORD6.xyz);
  mediump float tmpvar_13;
  tmpvar_13 = (_LightShadowData.x + (tmpvar_12 * (1.0 - _LightShadowData.x)));
  shadow_11 = tmpvar_13;
  atten_2 = shadow_11;
  mediump float tmpvar_14;
  lowp vec4 tmpvar_15;
  tmpvar_15 = texture2D (_OcclusionMap, xlv_TEXCOORD0.xy);
  tmpvar_14 = tmpvar_15.y;
  highp vec3 tmpvar_16;
  highp vec4 tmpvar_17;
  mediump vec3 cse_18;
  cse_18 = -(xlv_TEXCOORD1);
  tmpvar_16 = cse_18;
  tmpvar_17 = unity_SpecCube0_HDR;
  mediump vec3 tmpvar_19;
  mediump vec3 worldNormal_20;
  highp vec3 tmpvar_21;
  highp vec3 I_22;
  I_22 = -(tmpvar_16);
  tmpvar_21 = (I_22 - (2.0 * (
    dot (tmpvar_3, I_22)
   * tmpvar_3)));
  worldNormal_20 = tmpvar_21;
  mediump vec4 hdr_23;
  hdr_23 = tmpvar_17;
  highp float mip_24;
  mediump float tmpvar_25;
  mediump float cse_26;
  cse_26 = (1.0 - _Glossiness);
  tmpvar_25 = (cse_26 * 7.0);
  mip_24 = tmpvar_25;
  highp vec4 tmpvar_27;
  tmpvar_27.xyz = worldNormal_20;
  tmpvar_27.w = mip_24;
  lowp vec4 tmpvar_28;
  tmpvar_28 = textureCube (unity_SpecCube0, tmpvar_27.xyz, mip_24);
  mediump vec4 tmpvar_29;
  tmpvar_29 = tmpvar_28;
  tmpvar_19 = ((tmpvar_29.w * hdr_23.x) * tmpvar_29.xyz);
  tmpvar_19 = (tmpvar_19 * tmpvar_14);
  mediump vec2 tmpvar_30;
  tmpvar_30.x = dot ((cse_18 - (2.0 * 
    (dot (tmpvar_3, cse_18) * tmpvar_3)
  )), _WorldSpaceLightPos0.xyz);
  tmpvar_30.y = (1.0 - clamp (dot (tmpvar_3, cse_18), 0.0, 1.0));
  mediump vec2 tmpvar_31;
  tmpvar_31 = (((tmpvar_30 * tmpvar_30) * tmpvar_30) * tmpvar_30);
  mediump vec2 tmpvar_32;
  tmpvar_32.x = tmpvar_31.x;
  tmpvar_32.y = cse_26;
  lowp vec4 tmpvar_33;
  tmpvar_33 = texture2D (unity_NHxRoughness, tmpvar_32);
  mediump vec3 tmpvar_34;
  tmpvar_34 = (((
    ((tmpvar_6 + ((tmpvar_33.w * 16.0) * tmpvar_7)) * (tmpvar_9 * atten_2))
   * 
    clamp (dot (tmpvar_3, _WorldSpaceLightPos0.xyz), 0.0, 1.0)
  ) + (
    (xlv_TEXCOORD5.xyz * tmpvar_14)
   * tmpvar_6)) + (tmpvar_19 * mix (tmpvar_7, vec3(
    clamp ((_Glossiness + (1.0 - tmpvar_8)), 0.0, 1.0)
  ), tmpvar_31.yyy)));
  mediump vec4 tmpvar_35;
  tmpvar_35.w = 1.0;
  tmpvar_35.xyz = tmpvar_34;
  c_1.w = tmpvar_35.w;
  c_1.xyz = tmpvar_34;
  c_1.xyz = c_1.xyz;
  mediump vec4 xlat_varoutput_36;
  xlat_varoutput_36.xyz = c_1.xyz;
  xlat_varoutput_36.w = 1.0;
  gl_FragData[0] = xlat_varoutput_36;
}



#endif"
}
}
Program "fp" {
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
"!!GLES"
}
}
 }


 // Stats for Vertex shader:
 //        gles : 34 avg math (28..40), 3 avg texture (2..5), 0 avg branch (0..1)
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Fog {
   Color (0,0,0,0)
  }
  Blend [_SrcBlend] One
  GpuProgramID 413967
Program "vp" {
SubProgram "gles " {
// Stats: 30 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec3 tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_12;
  tmpvar_12 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_13;
  texcoord_13.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_14;
  if ((_UVSec == 0.0)) {
    tmpvar_14 = tmpvar_2;
  } else {
    tmpvar_14 = tmpvar_3;
  };
  texcoord_13.zw = ((tmpvar_14 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_15;
  n_15 = (tmpvar_11.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_16;
  norm_16 = tmpvar_1;
  highp vec4 v_17;
  v_17.x = _World2Object[0].x;
  v_17.y = _World2Object[1].x;
  v_17.z = _World2Object[2].x;
  v_17.w = _World2Object[3].x;
  highp vec4 v_18;
  v_18.x = _World2Object[0].y;
  v_18.y = _World2Object[1].y;
  v_18.z = _World2Object[2].y;
  v_18.w = _World2Object[3].y;
  highp vec4 v_19;
  v_19.x = _World2Object[0].z;
  v_19.y = _World2Object[1].z;
  v_19.z = _World2Object[2].z;
  v_19.w = _World2Object[3].z;
  highp vec3 tmpvar_20;
  tmpvar_20 = normalize(((
    (v_17.xyz * norm_16.x)
   + 
    (v_18.xyz * norm_16.y)
  ) + (v_19.xyz * norm_16.z)));
  highp vec3 dir_21;
  dir_21 = tmpvar_4.xyz;
  highp mat3 tmpvar_22;
  tmpvar_22[0] = _Object2World[0].xyz;
  tmpvar_22[1] = _Object2World[1].xyz;
  tmpvar_22[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = normalize((tmpvar_22 * dir_21));
  tmpvar_23.w = tmpvar_4.w;
  highp vec3 tmpvar_24;
  tmpvar_24 = tmpvar_23.www;
  mediump vec3 normal_25;
  normal_25 = tmpvar_20;
  mediump vec3 tangent_26;
  tangent_26 = tmpvar_23.xyz;
  mediump vec3 flip_27;
  flip_27 = tmpvar_24;
  mediump vec3 tmpvar_28;
  tmpvar_28 = (((normal_25.yzx * tangent_26.zxy) - (normal_25.zxy * tangent_26.yzx)) * flip_27);
  mediump mat3 tmpvar_29;
  tmpvar_29[0].x = tangent_26.x;
  tmpvar_29[0].y = tmpvar_28.x;
  tmpvar_29[0].z = normal_25.x;
  tmpvar_29[1].x = tangent_26.y;
  tmpvar_29[1].y = tmpvar_28.y;
  tmpvar_29[1].z = normal_25.y;
  tmpvar_29[2].x = tangent_26.z;
  tmpvar_29[2].y = tmpvar_28.z;
  tmpvar_29[2].z = normal_25.z;
  tangentToWorld_6 = tmpvar_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_6[0].x;
  v_30.y = tangentToWorld_6[1].x;
  v_30.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].y;
  v_31.y = tangentToWorld_6[1].y;
  v_31.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].z;
  v_32.y = tangentToWorld_6[1].z;
  v_32.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_32;
  highp vec3 tmpvar_33;
  tmpvar_33 = (_LightMatrix0 * (_Object2World * _glesVertex)).xyz;
  tmpvar_10 = tmpvar_33;
  highp vec3 tmpvar_34;
  tmpvar_34 = (_WorldSpaceLightPos0.xyz - (tmpvar_11.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_35;
  n_35 = tmpvar_34;
  mediump vec3 tmpvar_36;
  tmpvar_36 = normalize(n_35);
  lightDir_5 = tmpvar_36;
  highp float tmpvar_37;
  tmpvar_37 = lightDir_5.x;
  tmpvar_7.w = tmpvar_37;
  highp float tmpvar_38;
  tmpvar_38 = lightDir_5.y;
  tmpvar_8.w = tmpvar_38;
  highp float tmpvar_39;
  tmpvar_39 = lightDir_5.z;
  tmpvar_9.w = tmpvar_39;
  gl_Position = tmpvar_12;
  xlv_TEXCOORD0 = texcoord_13;
  xlv_TEXCOORD1 = normalize(n_15);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _LightTexture0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  mediump float tmpvar_5;
  tmpvar_5 = dot (xlv_TEXCOORD5, xlv_TEXCOORD5);
  lowp vec4 tmpvar_6;
  tmpvar_6 = texture2D (_LightTexture0, vec2(tmpvar_5));
  mediump float atten_7;
  atten_7 = tmpvar_6.w;
  mediump vec3 tmpvar_8;
  lowp vec3 tmpvar_9;
  tmpvar_9 = _LightColor0.xyz;
  tmpvar_8 = tmpvar_9;
  mediump vec3 tmpvar_10;
  tmpvar_10 = (tmpvar_8 * atten_7);
  tmpvar_8 = tmpvar_10;
  mediump vec3 viewDir_11;
  viewDir_11 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_12;
  tmpvar_12.x = dot ((viewDir_11 - (2.0 * 
    (dot (tmpvar_1, viewDir_11) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_12.y = (1.0 - clamp (dot (tmpvar_1, viewDir_11), 0.0, 1.0));
  mediump vec2 tmpvar_13;
  tmpvar_13.x = (((tmpvar_12 * tmpvar_12) * tmpvar_12) * tmpvar_12).x;
  tmpvar_13.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_14;
  tmpvar_14 = texture2D (unity_NHxRoughness, tmpvar_13);
  mediump vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_14.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_10) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_16;
  xlat_varoutput_16.xyz = tmpvar_15.xyz;
  xlat_varoutput_16.w = 1.0;
  gl_FragData[0] = xlat_varoutput_16;
}



#endif"
}
SubProgram "gles " {
// Stats: 28 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  highp vec4 tmpvar_9;
  tmpvar_9 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_10;
  tmpvar_10 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_11;
  texcoord_11.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_12;
  if ((_UVSec == 0.0)) {
    tmpvar_12 = tmpvar_2;
  } else {
    tmpvar_12 = tmpvar_3;
  };
  texcoord_11.zw = ((tmpvar_12 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_13;
  n_13 = (tmpvar_9.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_14;
  norm_14 = tmpvar_1;
  highp vec4 v_15;
  v_15.x = _World2Object[0].x;
  v_15.y = _World2Object[1].x;
  v_15.z = _World2Object[2].x;
  v_15.w = _World2Object[3].x;
  highp vec4 v_16;
  v_16.x = _World2Object[0].y;
  v_16.y = _World2Object[1].y;
  v_16.z = _World2Object[2].y;
  v_16.w = _World2Object[3].y;
  highp vec4 v_17;
  v_17.x = _World2Object[0].z;
  v_17.y = _World2Object[1].z;
  v_17.z = _World2Object[2].z;
  v_17.w = _World2Object[3].z;
  highp vec3 tmpvar_18;
  tmpvar_18 = normalize(((
    (v_15.xyz * norm_14.x)
   + 
    (v_16.xyz * norm_14.y)
  ) + (v_17.xyz * norm_14.z)));
  highp vec3 dir_19;
  dir_19 = tmpvar_4.xyz;
  highp mat3 tmpvar_20;
  tmpvar_20[0] = _Object2World[0].xyz;
  tmpvar_20[1] = _Object2World[1].xyz;
  tmpvar_20[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_21;
  tmpvar_21.xyz = normalize((tmpvar_20 * dir_19));
  tmpvar_21.w = tmpvar_4.w;
  highp vec3 tmpvar_22;
  tmpvar_22 = tmpvar_21.www;
  mediump vec3 normal_23;
  normal_23 = tmpvar_18;
  mediump vec3 tangent_24;
  tangent_24 = tmpvar_21.xyz;
  mediump vec3 flip_25;
  flip_25 = tmpvar_22;
  mediump vec3 tmpvar_26;
  tmpvar_26 = (((normal_23.yzx * tangent_24.zxy) - (normal_23.zxy * tangent_24.yzx)) * flip_25);
  mediump mat3 tmpvar_27;
  tmpvar_27[0].x = tangent_24.x;
  tmpvar_27[0].y = tmpvar_26.x;
  tmpvar_27[0].z = normal_23.x;
  tmpvar_27[1].x = tangent_24.y;
  tmpvar_27[1].y = tmpvar_26.y;
  tmpvar_27[1].z = normal_23.y;
  tmpvar_27[2].x = tangent_24.z;
  tmpvar_27[2].y = tmpvar_26.z;
  tmpvar_27[2].z = normal_23.z;
  tangentToWorld_5 = tmpvar_27;
  highp vec3 v_28;
  v_28.x = tangentToWorld_5[0].x;
  v_28.y = tangentToWorld_5[1].x;
  v_28.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_28;
  highp vec3 v_29;
  v_29.x = tangentToWorld_5[0].y;
  v_29.y = tangentToWorld_5[1].y;
  v_29.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].z;
  v_30.y = tangentToWorld_5[1].z;
  v_30.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_30;
  highp vec3 tmpvar_31;
  tmpvar_31 = (_WorldSpaceLightPos0.xyz - (tmpvar_9.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_32;
  tmpvar_32 = tmpvar_31.x;
  tmpvar_6.w = tmpvar_32;
  highp float tmpvar_33;
  tmpvar_33 = tmpvar_31.y;
  tmpvar_7.w = tmpvar_33;
  highp float tmpvar_34;
  tmpvar_34 = tmpvar_31.z;
  tmpvar_8.w = tmpvar_34;
  gl_Position = tmpvar_10;
  xlv_TEXCOORD0 = texcoord_11;
  xlv_TEXCOORD1 = normalize(n_13);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  mediump vec3 tmpvar_5;
  lowp vec3 tmpvar_6;
  tmpvar_6 = _LightColor0.xyz;
  tmpvar_5 = tmpvar_6;
  mediump vec3 viewDir_7;
  viewDir_7 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_8;
  tmpvar_8.x = dot ((viewDir_7 - (2.0 * 
    (dot (tmpvar_1, viewDir_7) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_8.y = (1.0 - clamp (dot (tmpvar_1, viewDir_7), 0.0, 1.0));
  mediump vec2 tmpvar_9;
  tmpvar_9.x = (((tmpvar_8 * tmpvar_8) * tmpvar_8) * tmpvar_8).x;
  tmpvar_9.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_10;
  tmpvar_10 = texture2D (unity_NHxRoughness, tmpvar_9);
  mediump vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_10.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_5) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_12;
  xlat_varoutput_12.xyz = tmpvar_11.xyz;
  xlat_varoutput_12.w = 1.0;
  gl_FragData[0] = xlat_varoutput_12;
}



#endif"
}
SubProgram "gles " {
// Stats: 36 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec4 tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_12;
  tmpvar_12 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_13;
  texcoord_13.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_14;
  if ((_UVSec == 0.0)) {
    tmpvar_14 = tmpvar_2;
  } else {
    tmpvar_14 = tmpvar_3;
  };
  texcoord_13.zw = ((tmpvar_14 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_15;
  n_15 = (tmpvar_11.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_16;
  norm_16 = tmpvar_1;
  highp vec4 v_17;
  v_17.x = _World2Object[0].x;
  v_17.y = _World2Object[1].x;
  v_17.z = _World2Object[2].x;
  v_17.w = _World2Object[3].x;
  highp vec4 v_18;
  v_18.x = _World2Object[0].y;
  v_18.y = _World2Object[1].y;
  v_18.z = _World2Object[2].y;
  v_18.w = _World2Object[3].y;
  highp vec4 v_19;
  v_19.x = _World2Object[0].z;
  v_19.y = _World2Object[1].z;
  v_19.z = _World2Object[2].z;
  v_19.w = _World2Object[3].z;
  highp vec3 tmpvar_20;
  tmpvar_20 = normalize(((
    (v_17.xyz * norm_16.x)
   + 
    (v_18.xyz * norm_16.y)
  ) + (v_19.xyz * norm_16.z)));
  highp vec3 dir_21;
  dir_21 = tmpvar_4.xyz;
  highp mat3 tmpvar_22;
  tmpvar_22[0] = _Object2World[0].xyz;
  tmpvar_22[1] = _Object2World[1].xyz;
  tmpvar_22[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = normalize((tmpvar_22 * dir_21));
  tmpvar_23.w = tmpvar_4.w;
  highp vec3 tmpvar_24;
  tmpvar_24 = tmpvar_23.www;
  mediump vec3 normal_25;
  normal_25 = tmpvar_20;
  mediump vec3 tangent_26;
  tangent_26 = tmpvar_23.xyz;
  mediump vec3 flip_27;
  flip_27 = tmpvar_24;
  mediump vec3 tmpvar_28;
  tmpvar_28 = (((normal_25.yzx * tangent_26.zxy) - (normal_25.zxy * tangent_26.yzx)) * flip_27);
  mediump mat3 tmpvar_29;
  tmpvar_29[0].x = tangent_26.x;
  tmpvar_29[0].y = tmpvar_28.x;
  tmpvar_29[0].z = normal_25.x;
  tmpvar_29[1].x = tangent_26.y;
  tmpvar_29[1].y = tmpvar_28.y;
  tmpvar_29[1].z = normal_25.y;
  tmpvar_29[2].x = tangent_26.z;
  tmpvar_29[2].y = tmpvar_28.z;
  tmpvar_29[2].z = normal_25.z;
  tangentToWorld_6 = tmpvar_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_6[0].x;
  v_30.y = tangentToWorld_6[1].x;
  v_30.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].y;
  v_31.y = tangentToWorld_6[1].y;
  v_31.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].z;
  v_32.y = tangentToWorld_6[1].z;
  v_32.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_32;
  highp vec4 tmpvar_33;
  tmpvar_33 = (_LightMatrix0 * (_Object2World * _glesVertex));
  tmpvar_10 = tmpvar_33;
  highp vec3 tmpvar_34;
  tmpvar_34 = (_WorldSpaceLightPos0.xyz - (tmpvar_11.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_35;
  n_35 = tmpvar_34;
  mediump vec3 tmpvar_36;
  tmpvar_36 = normalize(n_35);
  lightDir_5 = tmpvar_36;
  highp float tmpvar_37;
  tmpvar_37 = lightDir_5.x;
  tmpvar_7.w = tmpvar_37;
  highp float tmpvar_38;
  tmpvar_38 = lightDir_5.y;
  tmpvar_8.w = tmpvar_38;
  highp float tmpvar_39;
  tmpvar_39 = lightDir_5.z;
  tmpvar_9.w = tmpvar_39;
  gl_Position = tmpvar_12;
  xlv_TEXCOORD0 = texcoord_13;
  xlv_TEXCOORD1 = normalize(n_15);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _LightTexture0;
uniform sampler2D _LightTextureB0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_5;
  mediump vec2 P_6;
  P_6 = ((xlv_TEXCOORD5.xy / xlv_TEXCOORD5.w) + 0.5);
  tmpvar_5 = texture2D (_LightTexture0, P_6);
  mediump float tmpvar_7;
  tmpvar_7 = dot (xlv_TEXCOORD5.xyz, xlv_TEXCOORD5.xyz);
  lowp vec4 tmpvar_8;
  tmpvar_8 = texture2D (_LightTextureB0, vec2(tmpvar_7));
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  mediump vec3 tmpvar_11;
  tmpvar_11 = (tmpvar_9 * ((
    float((xlv_TEXCOORD5.z > 0.0))
   * tmpvar_5.w) * tmpvar_8.w));
  tmpvar_9 = tmpvar_11;
  mediump vec3 viewDir_12;
  viewDir_12 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_13;
  tmpvar_13.x = dot ((viewDir_12 - (2.0 * 
    (dot (tmpvar_1, viewDir_12) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_13.y = (1.0 - clamp (dot (tmpvar_1, viewDir_12), 0.0, 1.0));
  mediump vec2 tmpvar_14;
  tmpvar_14.x = (((tmpvar_13 * tmpvar_13) * tmpvar_13) * tmpvar_13).x;
  tmpvar_14.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_15;
  tmpvar_15 = texture2D (unity_NHxRoughness, tmpvar_14);
  mediump vec4 tmpvar_16;
  tmpvar_16.w = 1.0;
  tmpvar_16.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_15.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_11) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_17;
  xlat_varoutput_17.xyz = tmpvar_16.xyz;
  xlat_varoutput_17.w = 1.0;
  gl_FragData[0] = xlat_varoutput_17;
}



#endif"
}
SubProgram "gles " {
// Stats: 31 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec3 tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_12;
  tmpvar_12 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_13;
  texcoord_13.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_14;
  if ((_UVSec == 0.0)) {
    tmpvar_14 = tmpvar_2;
  } else {
    tmpvar_14 = tmpvar_3;
  };
  texcoord_13.zw = ((tmpvar_14 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_15;
  n_15 = (tmpvar_11.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_16;
  norm_16 = tmpvar_1;
  highp vec4 v_17;
  v_17.x = _World2Object[0].x;
  v_17.y = _World2Object[1].x;
  v_17.z = _World2Object[2].x;
  v_17.w = _World2Object[3].x;
  highp vec4 v_18;
  v_18.x = _World2Object[0].y;
  v_18.y = _World2Object[1].y;
  v_18.z = _World2Object[2].y;
  v_18.w = _World2Object[3].y;
  highp vec4 v_19;
  v_19.x = _World2Object[0].z;
  v_19.y = _World2Object[1].z;
  v_19.z = _World2Object[2].z;
  v_19.w = _World2Object[3].z;
  highp vec3 tmpvar_20;
  tmpvar_20 = normalize(((
    (v_17.xyz * norm_16.x)
   + 
    (v_18.xyz * norm_16.y)
  ) + (v_19.xyz * norm_16.z)));
  highp vec3 dir_21;
  dir_21 = tmpvar_4.xyz;
  highp mat3 tmpvar_22;
  tmpvar_22[0] = _Object2World[0].xyz;
  tmpvar_22[1] = _Object2World[1].xyz;
  tmpvar_22[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = normalize((tmpvar_22 * dir_21));
  tmpvar_23.w = tmpvar_4.w;
  highp vec3 tmpvar_24;
  tmpvar_24 = tmpvar_23.www;
  mediump vec3 normal_25;
  normal_25 = tmpvar_20;
  mediump vec3 tangent_26;
  tangent_26 = tmpvar_23.xyz;
  mediump vec3 flip_27;
  flip_27 = tmpvar_24;
  mediump vec3 tmpvar_28;
  tmpvar_28 = (((normal_25.yzx * tangent_26.zxy) - (normal_25.zxy * tangent_26.yzx)) * flip_27);
  mediump mat3 tmpvar_29;
  tmpvar_29[0].x = tangent_26.x;
  tmpvar_29[0].y = tmpvar_28.x;
  tmpvar_29[0].z = normal_25.x;
  tmpvar_29[1].x = tangent_26.y;
  tmpvar_29[1].y = tmpvar_28.y;
  tmpvar_29[1].z = normal_25.y;
  tmpvar_29[2].x = tangent_26.z;
  tmpvar_29[2].y = tmpvar_28.z;
  tmpvar_29[2].z = normal_25.z;
  tangentToWorld_6 = tmpvar_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_6[0].x;
  v_30.y = tangentToWorld_6[1].x;
  v_30.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].y;
  v_31.y = tangentToWorld_6[1].y;
  v_31.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].z;
  v_32.y = tangentToWorld_6[1].z;
  v_32.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_32;
  highp vec3 tmpvar_33;
  tmpvar_33 = (_LightMatrix0 * (_Object2World * _glesVertex)).xyz;
  tmpvar_10 = tmpvar_33;
  highp vec3 tmpvar_34;
  tmpvar_34 = (_WorldSpaceLightPos0.xyz - (tmpvar_11.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_35;
  n_35 = tmpvar_34;
  mediump vec3 tmpvar_36;
  tmpvar_36 = normalize(n_35);
  lightDir_5 = tmpvar_36;
  highp float tmpvar_37;
  tmpvar_37 = lightDir_5.x;
  tmpvar_7.w = tmpvar_37;
  highp float tmpvar_38;
  tmpvar_38 = lightDir_5.y;
  tmpvar_8.w = tmpvar_38;
  highp float tmpvar_39;
  tmpvar_39 = lightDir_5.z;
  tmpvar_9.w = tmpvar_39;
  gl_Position = tmpvar_12;
  xlv_TEXCOORD0 = texcoord_13;
  xlv_TEXCOORD1 = normalize(n_15);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform lowp samplerCube _LightTexture0;
uniform sampler2D _LightTextureB0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  mediump float tmpvar_5;
  tmpvar_5 = dot (xlv_TEXCOORD5, xlv_TEXCOORD5);
  lowp vec4 tmpvar_6;
  tmpvar_6 = texture2D (_LightTextureB0, vec2(tmpvar_5));
  lowp vec4 tmpvar_7;
  tmpvar_7 = textureCube (_LightTexture0, xlv_TEXCOORD5);
  mediump float atten_8;
  atten_8 = (tmpvar_6.w * tmpvar_7.w);
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  mediump vec3 tmpvar_11;
  tmpvar_11 = (tmpvar_9 * atten_8);
  tmpvar_9 = tmpvar_11;
  mediump vec3 viewDir_12;
  viewDir_12 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_13;
  tmpvar_13.x = dot ((viewDir_12 - (2.0 * 
    (dot (tmpvar_1, viewDir_12) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_13.y = (1.0 - clamp (dot (tmpvar_1, viewDir_12), 0.0, 1.0));
  mediump vec2 tmpvar_14;
  tmpvar_14.x = (((tmpvar_13 * tmpvar_13) * tmpvar_13) * tmpvar_13).x;
  tmpvar_14.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_15;
  tmpvar_15 = texture2D (unity_NHxRoughness, tmpvar_14);
  mediump vec4 tmpvar_16;
  tmpvar_16.w = 1.0;
  tmpvar_16.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_15.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_11) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_17;
  xlat_varoutput_17.xyz = tmpvar_16.xyz;
  xlat_varoutput_17.w = 1.0;
  gl_FragData[0] = xlat_varoutput_17;
}



#endif"
}
SubProgram "gles " {
// Stats: 29 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec2 tmpvar_9;
  highp vec4 tmpvar_10;
  tmpvar_10 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_11;
  tmpvar_11 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_12;
  texcoord_12.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_13;
  if ((_UVSec == 0.0)) {
    tmpvar_13 = tmpvar_2;
  } else {
    tmpvar_13 = tmpvar_3;
  };
  texcoord_12.zw = ((tmpvar_13 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_14;
  n_14 = (tmpvar_10.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_15;
  norm_15 = tmpvar_1;
  highp vec4 v_16;
  v_16.x = _World2Object[0].x;
  v_16.y = _World2Object[1].x;
  v_16.z = _World2Object[2].x;
  v_16.w = _World2Object[3].x;
  highp vec4 v_17;
  v_17.x = _World2Object[0].y;
  v_17.y = _World2Object[1].y;
  v_17.z = _World2Object[2].y;
  v_17.w = _World2Object[3].y;
  highp vec4 v_18;
  v_18.x = _World2Object[0].z;
  v_18.y = _World2Object[1].z;
  v_18.z = _World2Object[2].z;
  v_18.w = _World2Object[3].z;
  highp vec3 tmpvar_19;
  tmpvar_19 = normalize(((
    (v_16.xyz * norm_15.x)
   + 
    (v_17.xyz * norm_15.y)
  ) + (v_18.xyz * norm_15.z)));
  highp vec3 dir_20;
  dir_20 = tmpvar_4.xyz;
  highp mat3 tmpvar_21;
  tmpvar_21[0] = _Object2World[0].xyz;
  tmpvar_21[1] = _Object2World[1].xyz;
  tmpvar_21[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_22;
  tmpvar_22.xyz = normalize((tmpvar_21 * dir_20));
  tmpvar_22.w = tmpvar_4.w;
  highp vec3 tmpvar_23;
  tmpvar_23 = tmpvar_22.www;
  mediump vec3 normal_24;
  normal_24 = tmpvar_19;
  mediump vec3 tangent_25;
  tangent_25 = tmpvar_22.xyz;
  mediump vec3 flip_26;
  flip_26 = tmpvar_23;
  mediump vec3 tmpvar_27;
  tmpvar_27 = (((normal_24.yzx * tangent_25.zxy) - (normal_24.zxy * tangent_25.yzx)) * flip_26);
  mediump mat3 tmpvar_28;
  tmpvar_28[0].x = tangent_25.x;
  tmpvar_28[0].y = tmpvar_27.x;
  tmpvar_28[0].z = normal_24.x;
  tmpvar_28[1].x = tangent_25.y;
  tmpvar_28[1].y = tmpvar_27.y;
  tmpvar_28[1].z = normal_24.y;
  tmpvar_28[2].x = tangent_25.z;
  tmpvar_28[2].y = tmpvar_27.z;
  tmpvar_28[2].z = normal_24.z;
  tangentToWorld_5 = tmpvar_28;
  highp vec3 v_29;
  v_29.x = tangentToWorld_5[0].x;
  v_29.y = tangentToWorld_5[1].x;
  v_29.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].y;
  v_30.y = tangentToWorld_5[1].y;
  v_30.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_5[0].z;
  v_31.y = tangentToWorld_5[1].z;
  v_31.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_31;
  highp vec2 tmpvar_32;
  tmpvar_32 = (_LightMatrix0 * (_Object2World * _glesVertex)).xy;
  tmpvar_9 = tmpvar_32;
  highp vec3 tmpvar_33;
  tmpvar_33 = (_WorldSpaceLightPos0.xyz - (tmpvar_10.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_34;
  tmpvar_34 = tmpvar_33.x;
  tmpvar_6.w = tmpvar_34;
  highp float tmpvar_35;
  tmpvar_35 = tmpvar_33.y;
  tmpvar_7.w = tmpvar_35;
  highp float tmpvar_36;
  tmpvar_36 = tmpvar_33.z;
  tmpvar_8.w = tmpvar_36;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD0 = texcoord_12;
  xlv_TEXCOORD1 = normalize(n_14);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
  xlv_TEXCOORD5 = tmpvar_9;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _LightTexture0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2D (_LightTexture0, xlv_TEXCOORD5);
  mediump float atten_6;
  atten_6 = tmpvar_5.w;
  mediump vec3 tmpvar_7;
  lowp vec3 tmpvar_8;
  tmpvar_8 = _LightColor0.xyz;
  tmpvar_7 = tmpvar_8;
  mediump vec3 tmpvar_9;
  tmpvar_9 = (tmpvar_7 * atten_6);
  tmpvar_7 = tmpvar_9;
  mediump vec3 viewDir_10;
  viewDir_10 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_11;
  tmpvar_11.x = dot ((viewDir_10 - (2.0 * 
    (dot (tmpvar_1, viewDir_10) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_11.y = (1.0 - clamp (dot (tmpvar_1, viewDir_10), 0.0, 1.0));
  mediump vec2 tmpvar_12;
  tmpvar_12.x = (((tmpvar_11 * tmpvar_11) * tmpvar_11) * tmpvar_11).x;
  tmpvar_12.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_13;
  tmpvar_13 = texture2D (unity_NHxRoughness, tmpvar_12);
  mediump vec4 tmpvar_14;
  tmpvar_14.w = 1.0;
  tmpvar_14.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_13.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_9) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_15;
  xlat_varoutput_15.xyz = tmpvar_14.xyz;
  xlat_varoutput_15.w = 1.0;
  gl_FragData[0] = xlat_varoutput_15;
}



#endif"
}
SubProgram "gles " {
// Stats: 40 math, 5 textures, 1 branches
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NONATIVE" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec4 tmpvar_10;
  mediump vec4 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_13;
  tmpvar_13 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_14;
  texcoord_14.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_15;
  if ((_UVSec == 0.0)) {
    tmpvar_15 = tmpvar_2;
  } else {
    tmpvar_15 = tmpvar_3;
  };
  texcoord_14.zw = ((tmpvar_15 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_16;
  n_16 = (tmpvar_12.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_17;
  norm_17 = tmpvar_1;
  highp vec4 v_18;
  v_18.x = _World2Object[0].x;
  v_18.y = _World2Object[1].x;
  v_18.z = _World2Object[2].x;
  v_18.w = _World2Object[3].x;
  highp vec4 v_19;
  v_19.x = _World2Object[0].y;
  v_19.y = _World2Object[1].y;
  v_19.z = _World2Object[2].y;
  v_19.w = _World2Object[3].y;
  highp vec4 v_20;
  v_20.x = _World2Object[0].z;
  v_20.y = _World2Object[1].z;
  v_20.z = _World2Object[2].z;
  v_20.w = _World2Object[3].z;
  highp vec3 tmpvar_21;
  tmpvar_21 = normalize(((
    (v_18.xyz * norm_17.x)
   + 
    (v_19.xyz * norm_17.y)
  ) + (v_20.xyz * norm_17.z)));
  highp vec3 dir_22;
  dir_22 = tmpvar_4.xyz;
  highp mat3 tmpvar_23;
  tmpvar_23[0] = _Object2World[0].xyz;
  tmpvar_23[1] = _Object2World[1].xyz;
  tmpvar_23[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_24;
  tmpvar_24.xyz = normalize((tmpvar_23 * dir_22));
  tmpvar_24.w = tmpvar_4.w;
  highp vec3 tmpvar_25;
  tmpvar_25 = tmpvar_24.www;
  mediump vec3 normal_26;
  normal_26 = tmpvar_21;
  mediump vec3 tangent_27;
  tangent_27 = tmpvar_24.xyz;
  mediump vec3 flip_28;
  flip_28 = tmpvar_25;
  mediump vec3 tmpvar_29;
  tmpvar_29 = (((normal_26.yzx * tangent_27.zxy) - (normal_26.zxy * tangent_27.yzx)) * flip_28);
  mediump mat3 tmpvar_30;
  tmpvar_30[0].x = tangent_27.x;
  tmpvar_30[0].y = tmpvar_29.x;
  tmpvar_30[0].z = normal_26.x;
  tmpvar_30[1].x = tangent_27.y;
  tmpvar_30[1].y = tmpvar_29.y;
  tmpvar_30[1].z = normal_26.y;
  tmpvar_30[2].x = tangent_27.z;
  tmpvar_30[2].y = tmpvar_29.z;
  tmpvar_30[2].z = normal_26.z;
  tangentToWorld_6 = tmpvar_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].x;
  v_31.y = tangentToWorld_6[1].x;
  v_31.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].y;
  v_32.y = tangentToWorld_6[1].y;
  v_32.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_32;
  highp vec3 v_33;
  v_33.x = tangentToWorld_6[0].z;
  v_33.y = tangentToWorld_6[1].z;
  v_33.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_33;
  highp vec4 tmpvar_34;
  highp vec4 cse_35;
  cse_35 = (_Object2World * _glesVertex);
  tmpvar_34 = (_LightMatrix0 * cse_35);
  tmpvar_10 = tmpvar_34;
  highp vec4 tmpvar_36;
  tmpvar_36 = (unity_World2Shadow[0] * cse_35);
  tmpvar_11 = tmpvar_36;
  highp vec3 tmpvar_37;
  tmpvar_37 = (_WorldSpaceLightPos0.xyz - (tmpvar_12.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_38;
  n_38 = tmpvar_37;
  mediump vec3 tmpvar_39;
  tmpvar_39 = normalize(n_38);
  lightDir_5 = tmpvar_39;
  highp float tmpvar_40;
  tmpvar_40 = lightDir_5.x;
  tmpvar_7.w = tmpvar_40;
  highp float tmpvar_41;
  tmpvar_41 = lightDir_5.y;
  tmpvar_8.w = tmpvar_41;
  highp float tmpvar_42;
  tmpvar_42 = lightDir_5.z;
  tmpvar_9.w = tmpvar_42;
  gl_Position = tmpvar_13;
  xlv_TEXCOORD0 = texcoord_14;
  xlv_TEXCOORD1 = normalize(n_16);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
  xlv_TEXCOORD6 = tmpvar_11;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _ShadowMapTexture;
uniform sampler2D _LightTexture0;
uniform sampler2D _LightTextureB0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  mediump vec3 tmpvar_5;
  tmpvar_5 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic));
  tmpvar_4 = (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)));
  mediump vec3 tmpvar_6;
  tmpvar_6.x = xlv_TEXCOORD2.w;
  tmpvar_6.y = xlv_TEXCOORD2_1.w;
  tmpvar_6.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_7;
  mediump vec2 P_8;
  P_8 = ((xlv_TEXCOORD5.xy / xlv_TEXCOORD5.w) + 0.5);
  tmpvar_7 = texture2D (_LightTexture0, P_8);
  mediump float tmpvar_9;
  tmpvar_9 = dot (xlv_TEXCOORD5.xyz, xlv_TEXCOORD5.xyz);
  lowp vec4 tmpvar_10;
  tmpvar_10 = texture2D (_LightTextureB0, vec2(tmpvar_9));
  lowp float tmpvar_11;
  highp vec4 shadowCoord_12;
  shadowCoord_12 = xlv_TEXCOORD6;
  lowp vec4 tmpvar_13;
  tmpvar_13 = texture2DProj (_ShadowMapTexture, shadowCoord_12);
  mediump float tmpvar_14;
  if ((tmpvar_13.x < (shadowCoord_12.z / shadowCoord_12.w))) {
    tmpvar_14 = _LightShadowData.x;
  } else {
    tmpvar_14 = 1.0;
  };
  tmpvar_11 = tmpvar_14;
  mediump vec3 tmpvar_15;
  lowp vec3 tmpvar_16;
  tmpvar_16 = _LightColor0.xyz;
  tmpvar_15 = tmpvar_16;
  mediump vec3 tmpvar_17;
  tmpvar_17 = (tmpvar_15 * ((
    (float((xlv_TEXCOORD5.z > 0.0)) * tmpvar_7.w)
   * tmpvar_10.w) * tmpvar_11));
  tmpvar_15 = tmpvar_17;
  mediump vec3 viewDir_18;
  viewDir_18 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_19;
  tmpvar_19.x = dot ((viewDir_18 - (2.0 * 
    (dot (tmpvar_1, viewDir_18) * tmpvar_1)
  )), tmpvar_6);
  tmpvar_19.y = (1.0 - clamp (dot (tmpvar_1, viewDir_18), 0.0, 1.0));
  mediump vec2 tmpvar_20;
  tmpvar_20.x = (((tmpvar_19 * tmpvar_19) * tmpvar_19) * tmpvar_19).x;
  tmpvar_20.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_21;
  tmpvar_21 = texture2D (unity_NHxRoughness, tmpvar_20);
  mediump vec4 tmpvar_22;
  tmpvar_22.w = 1.0;
  tmpvar_22.xyz = (((tmpvar_4 + 
    ((tmpvar_21.w * 16.0) * tmpvar_5)
  ) * tmpvar_17) * clamp (dot (tmpvar_1, tmpvar_6), 0.0, 1.0));
  mediump vec4 xlat_varoutput_23;
  xlat_varoutput_23.xyz = tmpvar_22.xyz;
  xlat_varoutput_23.w = 1.0;
  gl_FragData[0] = xlat_varoutput_23;
}



#endif"
}
SubProgram "gles " {
// Stats: 40 math, 5 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
"!!GLES


#ifdef VERTEX

#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec4 tmpvar_10;
  mediump vec4 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_13;
  tmpvar_13 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_14;
  texcoord_14.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_15;
  if ((_UVSec == 0.0)) {
    tmpvar_15 = tmpvar_2;
  } else {
    tmpvar_15 = tmpvar_3;
  };
  texcoord_14.zw = ((tmpvar_15 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_16;
  n_16 = (tmpvar_12.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_17;
  norm_17 = tmpvar_1;
  highp vec4 v_18;
  v_18.x = _World2Object[0].x;
  v_18.y = _World2Object[1].x;
  v_18.z = _World2Object[2].x;
  v_18.w = _World2Object[3].x;
  highp vec4 v_19;
  v_19.x = _World2Object[0].y;
  v_19.y = _World2Object[1].y;
  v_19.z = _World2Object[2].y;
  v_19.w = _World2Object[3].y;
  highp vec4 v_20;
  v_20.x = _World2Object[0].z;
  v_20.y = _World2Object[1].z;
  v_20.z = _World2Object[2].z;
  v_20.w = _World2Object[3].z;
  highp vec3 tmpvar_21;
  tmpvar_21 = normalize(((
    (v_18.xyz * norm_17.x)
   + 
    (v_19.xyz * norm_17.y)
  ) + (v_20.xyz * norm_17.z)));
  highp vec3 dir_22;
  dir_22 = tmpvar_4.xyz;
  highp mat3 tmpvar_23;
  tmpvar_23[0] = _Object2World[0].xyz;
  tmpvar_23[1] = _Object2World[1].xyz;
  tmpvar_23[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_24;
  tmpvar_24.xyz = normalize((tmpvar_23 * dir_22));
  tmpvar_24.w = tmpvar_4.w;
  highp vec3 tmpvar_25;
  tmpvar_25 = tmpvar_24.www;
  mediump vec3 normal_26;
  normal_26 = tmpvar_21;
  mediump vec3 tangent_27;
  tangent_27 = tmpvar_24.xyz;
  mediump vec3 flip_28;
  flip_28 = tmpvar_25;
  mediump vec3 tmpvar_29;
  tmpvar_29 = (((normal_26.yzx * tangent_27.zxy) - (normal_26.zxy * tangent_27.yzx)) * flip_28);
  mediump mat3 tmpvar_30;
  tmpvar_30[0].x = tangent_27.x;
  tmpvar_30[0].y = tmpvar_29.x;
  tmpvar_30[0].z = normal_26.x;
  tmpvar_30[1].x = tangent_27.y;
  tmpvar_30[1].y = tmpvar_29.y;
  tmpvar_30[1].z = normal_26.y;
  tmpvar_30[2].x = tangent_27.z;
  tmpvar_30[2].y = tmpvar_29.z;
  tmpvar_30[2].z = normal_26.z;
  tangentToWorld_6 = tmpvar_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].x;
  v_31.y = tangentToWorld_6[1].x;
  v_31.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].y;
  v_32.y = tangentToWorld_6[1].y;
  v_32.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_32;
  highp vec3 v_33;
  v_33.x = tangentToWorld_6[0].z;
  v_33.y = tangentToWorld_6[1].z;
  v_33.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_33;
  highp vec4 tmpvar_34;
  highp vec4 cse_35;
  cse_35 = (_Object2World * _glesVertex);
  tmpvar_34 = (_LightMatrix0 * cse_35);
  tmpvar_10 = tmpvar_34;
  highp vec4 tmpvar_36;
  tmpvar_36 = (unity_World2Shadow[0] * cse_35);
  tmpvar_11 = tmpvar_36;
  highp vec3 tmpvar_37;
  tmpvar_37 = (_WorldSpaceLightPos0.xyz - (tmpvar_12.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_38;
  n_38 = tmpvar_37;
  mediump vec3 tmpvar_39;
  tmpvar_39 = normalize(n_38);
  lightDir_5 = tmpvar_39;
  highp float tmpvar_40;
  tmpvar_40 = lightDir_5.x;
  tmpvar_7.w = tmpvar_40;
  highp float tmpvar_41;
  tmpvar_41 = lightDir_5.y;
  tmpvar_8.w = tmpvar_41;
  highp float tmpvar_42;
  tmpvar_42 = lightDir_5.z;
  tmpvar_9.w = tmpvar_42;
  gl_Position = tmpvar_13;
  xlv_TEXCOORD0 = texcoord_14;
  xlv_TEXCOORD1 = normalize(n_16);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
  xlv_TEXCOORD6 = tmpvar_11;
}



#endif
#ifdef FRAGMENT

#extension GL_EXT_shadow_samplers : enable
uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _LightTexture0;
uniform sampler2D _LightTextureB0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_5;
  mediump vec2 P_6;
  P_6 = ((xlv_TEXCOORD5.xy / xlv_TEXCOORD5.w) + 0.5);
  tmpvar_5 = texture2D (_LightTexture0, P_6);
  mediump float tmpvar_7;
  tmpvar_7 = dot (xlv_TEXCOORD5.xyz, xlv_TEXCOORD5.xyz);
  lowp vec4 tmpvar_8;
  tmpvar_8 = texture2D (_LightTextureB0, vec2(tmpvar_7));
  lowp float tmpvar_9;
  highp vec4 shadowCoord_10;
  shadowCoord_10 = xlv_TEXCOORD6;
  lowp float tmpvar_11;
  tmpvar_11 = shadow2DProjEXT (_ShadowMapTexture, shadowCoord_10);
  mediump float tmpvar_12;
  tmpvar_12 = tmpvar_11;
  mediump float tmpvar_13;
  tmpvar_13 = (_LightShadowData.x + (tmpvar_12 * (1.0 - _LightShadowData.x)));
  tmpvar_9 = tmpvar_13;
  mediump vec3 tmpvar_14;
  lowp vec3 tmpvar_15;
  tmpvar_15 = _LightColor0.xyz;
  tmpvar_14 = tmpvar_15;
  mediump vec3 tmpvar_16;
  tmpvar_16 = (tmpvar_14 * ((
    (float((xlv_TEXCOORD5.z > 0.0)) * tmpvar_5.w)
   * tmpvar_8.w) * tmpvar_9));
  tmpvar_14 = tmpvar_16;
  mediump vec3 viewDir_17;
  viewDir_17 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_18;
  tmpvar_18.x = dot ((viewDir_17 - (2.0 * 
    (dot (tmpvar_1, viewDir_17) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_18.y = (1.0 - clamp (dot (tmpvar_1, viewDir_17), 0.0, 1.0));
  mediump vec2 tmpvar_19;
  tmpvar_19.x = (((tmpvar_18 * tmpvar_18) * tmpvar_18) * tmpvar_18).x;
  tmpvar_19.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_20;
  tmpvar_20 = texture2D (unity_NHxRoughness, tmpvar_19);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_20.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_16) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_22;
  xlat_varoutput_22.xyz = tmpvar_21.xyz;
  xlat_varoutput_22.w = 1.0;
  gl_FragData[0] = xlat_varoutput_22;
}



#endif"
}
SubProgram "gles " {
// Stats: 33 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  highp vec4 tmpvar_10;
  tmpvar_10 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_11;
  tmpvar_11 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_12;
  texcoord_12.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_13;
  if ((_UVSec == 0.0)) {
    tmpvar_13 = tmpvar_2;
  } else {
    tmpvar_13 = tmpvar_3;
  };
  texcoord_12.zw = ((tmpvar_13 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_14;
  n_14 = (tmpvar_10.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_15;
  norm_15 = tmpvar_1;
  highp vec4 v_16;
  v_16.x = _World2Object[0].x;
  v_16.y = _World2Object[1].x;
  v_16.z = _World2Object[2].x;
  v_16.w = _World2Object[3].x;
  highp vec4 v_17;
  v_17.x = _World2Object[0].y;
  v_17.y = _World2Object[1].y;
  v_17.z = _World2Object[2].y;
  v_17.w = _World2Object[3].y;
  highp vec4 v_18;
  v_18.x = _World2Object[0].z;
  v_18.y = _World2Object[1].z;
  v_18.z = _World2Object[2].z;
  v_18.w = _World2Object[3].z;
  highp vec3 tmpvar_19;
  tmpvar_19 = normalize(((
    (v_16.xyz * norm_15.x)
   + 
    (v_17.xyz * norm_15.y)
  ) + (v_18.xyz * norm_15.z)));
  highp vec3 dir_20;
  dir_20 = tmpvar_4.xyz;
  highp mat3 tmpvar_21;
  tmpvar_21[0] = _Object2World[0].xyz;
  tmpvar_21[1] = _Object2World[1].xyz;
  tmpvar_21[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_22;
  tmpvar_22.xyz = normalize((tmpvar_21 * dir_20));
  tmpvar_22.w = tmpvar_4.w;
  highp vec3 tmpvar_23;
  tmpvar_23 = tmpvar_22.www;
  mediump vec3 normal_24;
  normal_24 = tmpvar_19;
  mediump vec3 tangent_25;
  tangent_25 = tmpvar_22.xyz;
  mediump vec3 flip_26;
  flip_26 = tmpvar_23;
  mediump vec3 tmpvar_27;
  tmpvar_27 = (((normal_24.yzx * tangent_25.zxy) - (normal_24.zxy * tangent_25.yzx)) * flip_26);
  mediump mat3 tmpvar_28;
  tmpvar_28[0].x = tangent_25.x;
  tmpvar_28[0].y = tmpvar_27.x;
  tmpvar_28[0].z = normal_24.x;
  tmpvar_28[1].x = tangent_25.y;
  tmpvar_28[1].y = tmpvar_27.y;
  tmpvar_28[1].z = normal_24.y;
  tmpvar_28[2].x = tangent_25.z;
  tmpvar_28[2].y = tmpvar_27.z;
  tmpvar_28[2].z = normal_24.z;
  tangentToWorld_5 = tmpvar_28;
  highp vec3 v_29;
  v_29.x = tangentToWorld_5[0].x;
  v_29.y = tangentToWorld_5[1].x;
  v_29.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].y;
  v_30.y = tangentToWorld_5[1].y;
  v_30.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_5[0].z;
  v_31.y = tangentToWorld_5[1].z;
  v_31.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_31;
  highp vec4 tmpvar_32;
  tmpvar_32 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_9 = tmpvar_32;
  highp vec3 tmpvar_33;
  tmpvar_33 = (_WorldSpaceLightPos0.xyz - (tmpvar_10.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_34;
  tmpvar_34 = tmpvar_33.x;
  tmpvar_6.w = tmpvar_34;
  highp float tmpvar_35;
  tmpvar_35 = tmpvar_33.y;
  tmpvar_7.w = tmpvar_35;
  highp float tmpvar_36;
  tmpvar_36 = tmpvar_33.z;
  tmpvar_8.w = tmpvar_36;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD0 = texcoord_12;
  xlv_TEXCOORD1 = normalize(n_14);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
  xlv_TEXCOORD5 = tmpvar_9;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp float tmpvar_5;
  mediump float dist_6;
  lowp float tmpvar_7;
  tmpvar_7 = texture2DProj (_ShadowMapTexture, xlv_TEXCOORD5).x;
  dist_6 = tmpvar_7;
  mediump float tmpvar_8;
  tmpvar_8 = max (float((dist_6 > 
    (xlv_TEXCOORD5.z / xlv_TEXCOORD5.w)
  )), _LightShadowData.x);
  tmpvar_5 = tmpvar_8;
  mediump float atten_9;
  atten_9 = tmpvar_5;
  mediump vec3 tmpvar_10;
  lowp vec3 tmpvar_11;
  tmpvar_11 = _LightColor0.xyz;
  tmpvar_10 = tmpvar_11;
  mediump vec3 tmpvar_12;
  tmpvar_12 = (tmpvar_10 * atten_9);
  tmpvar_10 = tmpvar_12;
  mediump vec3 viewDir_13;
  viewDir_13 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_14;
  tmpvar_14.x = dot ((viewDir_13 - (2.0 * 
    (dot (tmpvar_1, viewDir_13) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_14.y = (1.0 - clamp (dot (tmpvar_1, viewDir_13), 0.0, 1.0));
  mediump vec2 tmpvar_15;
  tmpvar_15.x = (((tmpvar_14 * tmpvar_14) * tmpvar_14) * tmpvar_14).x;
  tmpvar_15.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_16;
  tmpvar_16 = texture2D (unity_NHxRoughness, tmpvar_15);
  mediump vec4 tmpvar_17;
  tmpvar_17.w = 1.0;
  tmpvar_17.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_16.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_12) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_18;
  xlat_varoutput_18.xyz = tmpvar_17.xyz;
  xlat_varoutput_18.w = 1.0;
  gl_FragData[0] = xlat_varoutput_18;
}



#endif"
}
SubProgram "gles " {
// Stats: 34 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec2 tmpvar_9;
  mediump vec4 tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_12;
  tmpvar_12 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_13;
  texcoord_13.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_14;
  if ((_UVSec == 0.0)) {
    tmpvar_14 = tmpvar_2;
  } else {
    tmpvar_14 = tmpvar_3;
  };
  texcoord_13.zw = ((tmpvar_14 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_15;
  n_15 = (tmpvar_11.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_16;
  norm_16 = tmpvar_1;
  highp vec4 v_17;
  v_17.x = _World2Object[0].x;
  v_17.y = _World2Object[1].x;
  v_17.z = _World2Object[2].x;
  v_17.w = _World2Object[3].x;
  highp vec4 v_18;
  v_18.x = _World2Object[0].y;
  v_18.y = _World2Object[1].y;
  v_18.z = _World2Object[2].y;
  v_18.w = _World2Object[3].y;
  highp vec4 v_19;
  v_19.x = _World2Object[0].z;
  v_19.y = _World2Object[1].z;
  v_19.z = _World2Object[2].z;
  v_19.w = _World2Object[3].z;
  highp vec3 tmpvar_20;
  tmpvar_20 = normalize(((
    (v_17.xyz * norm_16.x)
   + 
    (v_18.xyz * norm_16.y)
  ) + (v_19.xyz * norm_16.z)));
  highp vec3 dir_21;
  dir_21 = tmpvar_4.xyz;
  highp mat3 tmpvar_22;
  tmpvar_22[0] = _Object2World[0].xyz;
  tmpvar_22[1] = _Object2World[1].xyz;
  tmpvar_22[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = normalize((tmpvar_22 * dir_21));
  tmpvar_23.w = tmpvar_4.w;
  highp vec3 tmpvar_24;
  tmpvar_24 = tmpvar_23.www;
  mediump vec3 normal_25;
  normal_25 = tmpvar_20;
  mediump vec3 tangent_26;
  tangent_26 = tmpvar_23.xyz;
  mediump vec3 flip_27;
  flip_27 = tmpvar_24;
  mediump vec3 tmpvar_28;
  tmpvar_28 = (((normal_25.yzx * tangent_26.zxy) - (normal_25.zxy * tangent_26.yzx)) * flip_27);
  mediump mat3 tmpvar_29;
  tmpvar_29[0].x = tangent_26.x;
  tmpvar_29[0].y = tmpvar_28.x;
  tmpvar_29[0].z = normal_25.x;
  tmpvar_29[1].x = tangent_26.y;
  tmpvar_29[1].y = tmpvar_28.y;
  tmpvar_29[1].z = normal_25.y;
  tmpvar_29[2].x = tangent_26.z;
  tmpvar_29[2].y = tmpvar_28.z;
  tmpvar_29[2].z = normal_25.z;
  tangentToWorld_5 = tmpvar_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].x;
  v_30.y = tangentToWorld_5[1].x;
  v_30.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_5[0].y;
  v_31.y = tangentToWorld_5[1].y;
  v_31.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_5[0].z;
  v_32.y = tangentToWorld_5[1].z;
  v_32.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_32;
  highp vec2 tmpvar_33;
  highp vec4 cse_34;
  cse_34 = (_Object2World * _glesVertex);
  tmpvar_33 = (_LightMatrix0 * cse_34).xy;
  tmpvar_9 = tmpvar_33;
  highp vec4 tmpvar_35;
  tmpvar_35 = (unity_World2Shadow[0] * cse_34);
  tmpvar_10 = tmpvar_35;
  highp vec3 tmpvar_36;
  tmpvar_36 = (_WorldSpaceLightPos0.xyz - (tmpvar_11.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_37;
  tmpvar_37 = tmpvar_36.x;
  tmpvar_6.w = tmpvar_37;
  highp float tmpvar_38;
  tmpvar_38 = tmpvar_36.y;
  tmpvar_7.w = tmpvar_38;
  highp float tmpvar_39;
  tmpvar_39 = tmpvar_36.z;
  tmpvar_8.w = tmpvar_39;
  gl_Position = tmpvar_12;
  xlv_TEXCOORD0 = texcoord_13;
  xlv_TEXCOORD1 = normalize(n_15);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
  xlv_TEXCOORD5 = tmpvar_9;
  xlv_TEXCOORD6 = tmpvar_10;
}



#endif
#ifdef FRAGMENT

uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform sampler2D _ShadowMapTexture;
uniform sampler2D _LightTexture0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2D (_LightTexture0, xlv_TEXCOORD5);
  lowp float tmpvar_6;
  mediump float dist_7;
  lowp float tmpvar_8;
  tmpvar_8 = texture2DProj (_ShadowMapTexture, xlv_TEXCOORD6).x;
  dist_7 = tmpvar_8;
  mediump float tmpvar_9;
  tmpvar_9 = max (float((dist_7 > 
    (xlv_TEXCOORD6.z / xlv_TEXCOORD6.w)
  )), _LightShadowData.x);
  tmpvar_6 = tmpvar_9;
  mediump float atten_10;
  atten_10 = (tmpvar_5.w * tmpvar_6);
  mediump vec3 tmpvar_11;
  lowp vec3 tmpvar_12;
  tmpvar_12 = _LightColor0.xyz;
  tmpvar_11 = tmpvar_12;
  mediump vec3 tmpvar_13;
  tmpvar_13 = (tmpvar_11 * atten_10);
  tmpvar_11 = tmpvar_13;
  mediump vec3 viewDir_14;
  viewDir_14 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_15;
  tmpvar_15.x = dot ((viewDir_14 - (2.0 * 
    (dot (tmpvar_1, viewDir_14) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_15.y = (1.0 - clamp (dot (tmpvar_1, viewDir_14), 0.0, 1.0));
  mediump vec2 tmpvar_16;
  tmpvar_16.x = (((tmpvar_15 * tmpvar_15) * tmpvar_15) * tmpvar_15).x;
  tmpvar_16.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_17;
  tmpvar_17 = texture2D (unity_NHxRoughness, tmpvar_16);
  mediump vec4 tmpvar_18;
  tmpvar_18.w = 1.0;
  tmpvar_18.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_17.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_13) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_19;
  xlat_varoutput_19.xyz = tmpvar_18.xyz;
  xlat_varoutput_19.w = 1.0;
  gl_FragData[0] = xlat_varoutput_19;
}



#endif"
}
SubProgram "gles " {
// Stats: 38 math, 4 textures, 1 branches
Keywords { "POINT" "SHADOWS_CUBE" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp vec4 _LightPositionRange;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
varying mediump vec3 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec3 tmpvar_10;
  mediump vec3 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_13;
  tmpvar_13 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_14;
  texcoord_14.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_15;
  if ((_UVSec == 0.0)) {
    tmpvar_15 = tmpvar_2;
  } else {
    tmpvar_15 = tmpvar_3;
  };
  texcoord_14.zw = ((tmpvar_15 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_16;
  n_16 = (tmpvar_12.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_17;
  norm_17 = tmpvar_1;
  highp vec4 v_18;
  v_18.x = _World2Object[0].x;
  v_18.y = _World2Object[1].x;
  v_18.z = _World2Object[2].x;
  v_18.w = _World2Object[3].x;
  highp vec4 v_19;
  v_19.x = _World2Object[0].y;
  v_19.y = _World2Object[1].y;
  v_19.z = _World2Object[2].y;
  v_19.w = _World2Object[3].y;
  highp vec4 v_20;
  v_20.x = _World2Object[0].z;
  v_20.y = _World2Object[1].z;
  v_20.z = _World2Object[2].z;
  v_20.w = _World2Object[3].z;
  highp vec3 tmpvar_21;
  tmpvar_21 = normalize(((
    (v_18.xyz * norm_17.x)
   + 
    (v_19.xyz * norm_17.y)
  ) + (v_20.xyz * norm_17.z)));
  highp vec3 dir_22;
  dir_22 = tmpvar_4.xyz;
  highp mat3 tmpvar_23;
  tmpvar_23[0] = _Object2World[0].xyz;
  tmpvar_23[1] = _Object2World[1].xyz;
  tmpvar_23[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_24;
  tmpvar_24.xyz = normalize((tmpvar_23 * dir_22));
  tmpvar_24.w = tmpvar_4.w;
  highp vec3 tmpvar_25;
  tmpvar_25 = tmpvar_24.www;
  mediump vec3 normal_26;
  normal_26 = tmpvar_21;
  mediump vec3 tangent_27;
  tangent_27 = tmpvar_24.xyz;
  mediump vec3 flip_28;
  flip_28 = tmpvar_25;
  mediump vec3 tmpvar_29;
  tmpvar_29 = (((normal_26.yzx * tangent_27.zxy) - (normal_26.zxy * tangent_27.yzx)) * flip_28);
  mediump mat3 tmpvar_30;
  tmpvar_30[0].x = tangent_27.x;
  tmpvar_30[0].y = tmpvar_29.x;
  tmpvar_30[0].z = normal_26.x;
  tmpvar_30[1].x = tangent_27.y;
  tmpvar_30[1].y = tmpvar_29.y;
  tmpvar_30[1].z = normal_26.y;
  tmpvar_30[2].x = tangent_27.z;
  tmpvar_30[2].y = tmpvar_29.z;
  tmpvar_30[2].z = normal_26.z;
  tangentToWorld_6 = tmpvar_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].x;
  v_31.y = tangentToWorld_6[1].x;
  v_31.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].y;
  v_32.y = tangentToWorld_6[1].y;
  v_32.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_32;
  highp vec3 v_33;
  v_33.x = tangentToWorld_6[0].z;
  v_33.y = tangentToWorld_6[1].z;
  v_33.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_33;
  highp vec3 tmpvar_34;
  highp vec4 cse_35;
  cse_35 = (_Object2World * _glesVertex);
  tmpvar_34 = (_LightMatrix0 * cse_35).xyz;
  tmpvar_10 = tmpvar_34;
  highp vec3 tmpvar_36;
  tmpvar_36 = (cse_35.xyz - _LightPositionRange.xyz);
  tmpvar_11 = tmpvar_36;
  highp vec3 tmpvar_37;
  tmpvar_37 = (_WorldSpaceLightPos0.xyz - (tmpvar_12.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_38;
  n_38 = tmpvar_37;
  mediump vec3 tmpvar_39;
  tmpvar_39 = normalize(n_38);
  lightDir_5 = tmpvar_39;
  highp float tmpvar_40;
  tmpvar_40 = lightDir_5.x;
  tmpvar_7.w = tmpvar_40;
  highp float tmpvar_41;
  tmpvar_41 = lightDir_5.y;
  tmpvar_8.w = tmpvar_41;
  highp float tmpvar_42;
  tmpvar_42 = lightDir_5.z;
  tmpvar_9.w = tmpvar_42;
  gl_Position = tmpvar_13;
  xlv_TEXCOORD0 = texcoord_14;
  xlv_TEXCOORD1 = normalize(n_16);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
  xlv_TEXCOORD6 = tmpvar_11;
}



#endif
#ifdef FRAGMENT

uniform highp vec4 _LightPositionRange;
uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform highp samplerCube _ShadowMapTexture;
uniform sampler2D _LightTexture0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
varying mediump vec3 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  mediump vec3 tmpvar_5;
  tmpvar_5 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic));
  tmpvar_4 = (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)));
  mediump vec3 tmpvar_6;
  tmpvar_6.x = xlv_TEXCOORD2.w;
  tmpvar_6.y = xlv_TEXCOORD2_1.w;
  tmpvar_6.z = xlv_TEXCOORD2_2.w;
  mediump float tmpvar_7;
  tmpvar_7 = dot (xlv_TEXCOORD5, xlv_TEXCOORD5);
  lowp vec4 tmpvar_8;
  tmpvar_8 = texture2D (_LightTexture0, vec2(tmpvar_7));
  highp vec3 vec_9;
  vec_9 = xlv_TEXCOORD6;
  highp float tmpvar_10;
  tmpvar_10 = ((sqrt(
    dot (vec_9, vec_9)
  ) * _LightPositionRange.w) * 0.97);
  highp vec4 tmpvar_11;
  tmpvar_11 = textureCube (_ShadowMapTexture, vec_9);
  highp float tmpvar_12;
  tmpvar_12 = dot (tmpvar_11, vec4(1.0, 0.003921569, 1.53787e-05, 6.030863e-08));
  mediump float tmpvar_13;
  if ((tmpvar_12 < tmpvar_10)) {
    tmpvar_13 = _LightShadowData.x;
  } else {
    tmpvar_13 = 1.0;
  };
  mediump vec3 tmpvar_14;
  lowp vec3 tmpvar_15;
  tmpvar_15 = _LightColor0.xyz;
  tmpvar_14 = tmpvar_15;
  mediump vec3 tmpvar_16;
  tmpvar_16 = (tmpvar_14 * (tmpvar_8.w * tmpvar_13));
  tmpvar_14 = tmpvar_16;
  mediump vec3 viewDir_17;
  viewDir_17 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_18;
  tmpvar_18.x = dot ((viewDir_17 - (2.0 * 
    (dot (tmpvar_1, viewDir_17) * tmpvar_1)
  )), tmpvar_6);
  tmpvar_18.y = (1.0 - clamp (dot (tmpvar_1, viewDir_17), 0.0, 1.0));
  mediump vec2 tmpvar_19;
  tmpvar_19.x = (((tmpvar_18 * tmpvar_18) * tmpvar_18) * tmpvar_18).x;
  tmpvar_19.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_20;
  tmpvar_20 = texture2D (unity_NHxRoughness, tmpvar_19);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = (((tmpvar_4 + 
    ((tmpvar_20.w * 16.0) * tmpvar_5)
  ) * tmpvar_16) * clamp (dot (tmpvar_1, tmpvar_6), 0.0, 1.0));
  mediump vec4 xlat_varoutput_22;
  xlat_varoutput_22.xyz = tmpvar_21.xyz;
  xlat_varoutput_22.w = 1.0;
  gl_FragData[0] = xlat_varoutput_22;
}



#endif"
}
SubProgram "gles " {
// Stats: 39 math, 5 textures, 1 branches
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp vec4 _LightPositionRange;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
varying mediump vec3 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp vec3 lightDir_5;
  highp mat3 tangentToWorld_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  mediump vec3 tmpvar_10;
  mediump vec3 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_13;
  tmpvar_13 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_14;
  texcoord_14.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_15;
  if ((_UVSec == 0.0)) {
    tmpvar_15 = tmpvar_2;
  } else {
    tmpvar_15 = tmpvar_3;
  };
  texcoord_14.zw = ((tmpvar_15 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_16;
  n_16 = (tmpvar_12.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_17;
  norm_17 = tmpvar_1;
  highp vec4 v_18;
  v_18.x = _World2Object[0].x;
  v_18.y = _World2Object[1].x;
  v_18.z = _World2Object[2].x;
  v_18.w = _World2Object[3].x;
  highp vec4 v_19;
  v_19.x = _World2Object[0].y;
  v_19.y = _World2Object[1].y;
  v_19.z = _World2Object[2].y;
  v_19.w = _World2Object[3].y;
  highp vec4 v_20;
  v_20.x = _World2Object[0].z;
  v_20.y = _World2Object[1].z;
  v_20.z = _World2Object[2].z;
  v_20.w = _World2Object[3].z;
  highp vec3 tmpvar_21;
  tmpvar_21 = normalize(((
    (v_18.xyz * norm_17.x)
   + 
    (v_19.xyz * norm_17.y)
  ) + (v_20.xyz * norm_17.z)));
  highp vec3 dir_22;
  dir_22 = tmpvar_4.xyz;
  highp mat3 tmpvar_23;
  tmpvar_23[0] = _Object2World[0].xyz;
  tmpvar_23[1] = _Object2World[1].xyz;
  tmpvar_23[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_24;
  tmpvar_24.xyz = normalize((tmpvar_23 * dir_22));
  tmpvar_24.w = tmpvar_4.w;
  highp vec3 tmpvar_25;
  tmpvar_25 = tmpvar_24.www;
  mediump vec3 normal_26;
  normal_26 = tmpvar_21;
  mediump vec3 tangent_27;
  tangent_27 = tmpvar_24.xyz;
  mediump vec3 flip_28;
  flip_28 = tmpvar_25;
  mediump vec3 tmpvar_29;
  tmpvar_29 = (((normal_26.yzx * tangent_27.zxy) - (normal_26.zxy * tangent_27.yzx)) * flip_28);
  mediump mat3 tmpvar_30;
  tmpvar_30[0].x = tangent_27.x;
  tmpvar_30[0].y = tmpvar_29.x;
  tmpvar_30[0].z = normal_26.x;
  tmpvar_30[1].x = tangent_27.y;
  tmpvar_30[1].y = tmpvar_29.y;
  tmpvar_30[1].z = normal_26.y;
  tmpvar_30[2].x = tangent_27.z;
  tmpvar_30[2].y = tmpvar_29.z;
  tmpvar_30[2].z = normal_26.z;
  tangentToWorld_6 = tmpvar_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_6[0].x;
  v_31.y = tangentToWorld_6[1].x;
  v_31.z = tangentToWorld_6[2].x;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_6[0].y;
  v_32.y = tangentToWorld_6[1].y;
  v_32.z = tangentToWorld_6[2].y;
  tmpvar_8.xyz = v_32;
  highp vec3 v_33;
  v_33.x = tangentToWorld_6[0].z;
  v_33.y = tangentToWorld_6[1].z;
  v_33.z = tangentToWorld_6[2].z;
  tmpvar_9.xyz = v_33;
  highp vec3 tmpvar_34;
  highp vec4 cse_35;
  cse_35 = (_Object2World * _glesVertex);
  tmpvar_34 = (_LightMatrix0 * cse_35).xyz;
  tmpvar_10 = tmpvar_34;
  highp vec3 tmpvar_36;
  tmpvar_36 = (cse_35.xyz - _LightPositionRange.xyz);
  tmpvar_11 = tmpvar_36;
  highp vec3 tmpvar_37;
  tmpvar_37 = (_WorldSpaceLightPos0.xyz - (tmpvar_12.xyz * _WorldSpaceLightPos0.w));
  mediump vec3 n_38;
  n_38 = tmpvar_37;
  mediump vec3 tmpvar_39;
  tmpvar_39 = normalize(n_38);
  lightDir_5 = tmpvar_39;
  highp float tmpvar_40;
  tmpvar_40 = lightDir_5.x;
  tmpvar_7.w = tmpvar_40;
  highp float tmpvar_41;
  tmpvar_41 = lightDir_5.y;
  tmpvar_8.w = tmpvar_41;
  highp float tmpvar_42;
  tmpvar_42 = lightDir_5.z;
  tmpvar_9.w = tmpvar_42;
  gl_Position = tmpvar_13;
  xlv_TEXCOORD0 = texcoord_14;
  xlv_TEXCOORD1 = normalize(n_16);
  xlv_TEXCOORD2 = tmpvar_7;
  xlv_TEXCOORD2_1 = tmpvar_8;
  xlv_TEXCOORD2_2 = tmpvar_9;
  xlv_TEXCOORD5 = tmpvar_10;
  xlv_TEXCOORD6 = tmpvar_11;
}



#endif
#ifdef FRAGMENT

uniform highp vec4 _LightPositionRange;
uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform highp samplerCube _ShadowMapTexture;
uniform lowp samplerCube _LightTexture0;
uniform sampler2D _LightTextureB0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec3 xlv_TEXCOORD5;
varying mediump vec3 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  mediump vec3 tmpvar_5;
  tmpvar_5 = mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic));
  tmpvar_4 = (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)));
  mediump vec3 tmpvar_6;
  tmpvar_6.x = xlv_TEXCOORD2.w;
  tmpvar_6.y = xlv_TEXCOORD2_1.w;
  tmpvar_6.z = xlv_TEXCOORD2_2.w;
  mediump float tmpvar_7;
  tmpvar_7 = dot (xlv_TEXCOORD5, xlv_TEXCOORD5);
  lowp vec4 tmpvar_8;
  tmpvar_8 = texture2D (_LightTextureB0, vec2(tmpvar_7));
  lowp vec4 tmpvar_9;
  tmpvar_9 = textureCube (_LightTexture0, xlv_TEXCOORD5);
  highp vec3 vec_10;
  vec_10 = xlv_TEXCOORD6;
  highp float tmpvar_11;
  tmpvar_11 = ((sqrt(
    dot (vec_10, vec_10)
  ) * _LightPositionRange.w) * 0.97);
  highp vec4 tmpvar_12;
  tmpvar_12 = textureCube (_ShadowMapTexture, vec_10);
  highp float tmpvar_13;
  tmpvar_13 = dot (tmpvar_12, vec4(1.0, 0.003921569, 1.53787e-05, 6.030863e-08));
  mediump float tmpvar_14;
  if ((tmpvar_13 < tmpvar_11)) {
    tmpvar_14 = _LightShadowData.x;
  } else {
    tmpvar_14 = 1.0;
  };
  mediump vec3 tmpvar_15;
  lowp vec3 tmpvar_16;
  tmpvar_16 = _LightColor0.xyz;
  tmpvar_15 = tmpvar_16;
  mediump vec3 tmpvar_17;
  tmpvar_17 = (tmpvar_15 * ((tmpvar_8.w * tmpvar_9.w) * tmpvar_14));
  tmpvar_15 = tmpvar_17;
  mediump vec3 viewDir_18;
  viewDir_18 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_19;
  tmpvar_19.x = dot ((viewDir_18 - (2.0 * 
    (dot (tmpvar_1, viewDir_18) * tmpvar_1)
  )), tmpvar_6);
  tmpvar_19.y = (1.0 - clamp (dot (tmpvar_1, viewDir_18), 0.0, 1.0));
  mediump vec2 tmpvar_20;
  tmpvar_20.x = (((tmpvar_19 * tmpvar_19) * tmpvar_19) * tmpvar_19).x;
  tmpvar_20.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_21;
  tmpvar_21 = texture2D (unity_NHxRoughness, tmpvar_20);
  mediump vec4 tmpvar_22;
  tmpvar_22.w = 1.0;
  tmpvar_22.xyz = (((tmpvar_4 + 
    ((tmpvar_21.w * 16.0) * tmpvar_5)
  ) * tmpvar_17) * clamp (dot (tmpvar_1, tmpvar_6), 0.0, 1.0));
  mediump vec4 xlat_varoutput_23;
  xlat_varoutput_23.xyz = tmpvar_22.xyz;
  xlat_varoutput_23.w = 1.0;
  gl_FragData[0] = xlat_varoutput_23;
}



#endif"
}
SubProgram "gles " {
// Stats: 32 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
"!!GLES


#ifdef VERTEX

#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec4 tmpvar_9;
  highp vec4 tmpvar_10;
  tmpvar_10 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_11;
  tmpvar_11 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_12;
  texcoord_12.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_13;
  if ((_UVSec == 0.0)) {
    tmpvar_13 = tmpvar_2;
  } else {
    tmpvar_13 = tmpvar_3;
  };
  texcoord_12.zw = ((tmpvar_13 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_14;
  n_14 = (tmpvar_10.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_15;
  norm_15 = tmpvar_1;
  highp vec4 v_16;
  v_16.x = _World2Object[0].x;
  v_16.y = _World2Object[1].x;
  v_16.z = _World2Object[2].x;
  v_16.w = _World2Object[3].x;
  highp vec4 v_17;
  v_17.x = _World2Object[0].y;
  v_17.y = _World2Object[1].y;
  v_17.z = _World2Object[2].y;
  v_17.w = _World2Object[3].y;
  highp vec4 v_18;
  v_18.x = _World2Object[0].z;
  v_18.y = _World2Object[1].z;
  v_18.z = _World2Object[2].z;
  v_18.w = _World2Object[3].z;
  highp vec3 tmpvar_19;
  tmpvar_19 = normalize(((
    (v_16.xyz * norm_15.x)
   + 
    (v_17.xyz * norm_15.y)
  ) + (v_18.xyz * norm_15.z)));
  highp vec3 dir_20;
  dir_20 = tmpvar_4.xyz;
  highp mat3 tmpvar_21;
  tmpvar_21[0] = _Object2World[0].xyz;
  tmpvar_21[1] = _Object2World[1].xyz;
  tmpvar_21[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_22;
  tmpvar_22.xyz = normalize((tmpvar_21 * dir_20));
  tmpvar_22.w = tmpvar_4.w;
  highp vec3 tmpvar_23;
  tmpvar_23 = tmpvar_22.www;
  mediump vec3 normal_24;
  normal_24 = tmpvar_19;
  mediump vec3 tangent_25;
  tangent_25 = tmpvar_22.xyz;
  mediump vec3 flip_26;
  flip_26 = tmpvar_23;
  mediump vec3 tmpvar_27;
  tmpvar_27 = (((normal_24.yzx * tangent_25.zxy) - (normal_24.zxy * tangent_25.yzx)) * flip_26);
  mediump mat3 tmpvar_28;
  tmpvar_28[0].x = tangent_25.x;
  tmpvar_28[0].y = tmpvar_27.x;
  tmpvar_28[0].z = normal_24.x;
  tmpvar_28[1].x = tangent_25.y;
  tmpvar_28[1].y = tmpvar_27.y;
  tmpvar_28[1].z = normal_24.y;
  tmpvar_28[2].x = tangent_25.z;
  tmpvar_28[2].y = tmpvar_27.z;
  tmpvar_28[2].z = normal_24.z;
  tangentToWorld_5 = tmpvar_28;
  highp vec3 v_29;
  v_29.x = tangentToWorld_5[0].x;
  v_29.y = tangentToWorld_5[1].x;
  v_29.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].y;
  v_30.y = tangentToWorld_5[1].y;
  v_30.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_5[0].z;
  v_31.y = tangentToWorld_5[1].z;
  v_31.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_31;
  highp vec4 tmpvar_32;
  tmpvar_32 = (unity_World2Shadow[0] * (_Object2World * _glesVertex));
  tmpvar_9 = tmpvar_32;
  highp vec3 tmpvar_33;
  tmpvar_33 = (_WorldSpaceLightPos0.xyz - (tmpvar_10.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_34;
  tmpvar_34 = tmpvar_33.x;
  tmpvar_6.w = tmpvar_34;
  highp float tmpvar_35;
  tmpvar_35 = tmpvar_33.y;
  tmpvar_7.w = tmpvar_35;
  highp float tmpvar_36;
  tmpvar_36 = tmpvar_33.z;
  tmpvar_8.w = tmpvar_36;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD0 = texcoord_12;
  xlv_TEXCOORD1 = normalize(n_14);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
  xlv_TEXCOORD5 = tmpvar_9;
}



#endif
#ifdef FRAGMENT

#extension GL_EXT_shadow_samplers : enable
uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform lowp sampler2DShadow _ShadowMapTexture;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp float shadow_5;
  lowp float tmpvar_6;
  tmpvar_6 = shadow2DEXT (_ShadowMapTexture, xlv_TEXCOORD5.xyz);
  mediump float tmpvar_7;
  tmpvar_7 = (_LightShadowData.x + (tmpvar_6 * (1.0 - _LightShadowData.x)));
  shadow_5 = tmpvar_7;
  mediump float atten_8;
  atten_8 = shadow_5;
  mediump vec3 tmpvar_9;
  lowp vec3 tmpvar_10;
  tmpvar_10 = _LightColor0.xyz;
  tmpvar_9 = tmpvar_10;
  mediump vec3 tmpvar_11;
  tmpvar_11 = (tmpvar_9 * atten_8);
  tmpvar_9 = tmpvar_11;
  mediump vec3 viewDir_12;
  viewDir_12 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_13;
  tmpvar_13.x = dot ((viewDir_12 - (2.0 * 
    (dot (tmpvar_1, viewDir_12) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_13.y = (1.0 - clamp (dot (tmpvar_1, viewDir_12), 0.0, 1.0));
  mediump vec2 tmpvar_14;
  tmpvar_14.x = (((tmpvar_13 * tmpvar_13) * tmpvar_13) * tmpvar_13).x;
  tmpvar_14.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_15;
  tmpvar_15 = texture2D (unity_NHxRoughness, tmpvar_14);
  mediump vec4 tmpvar_16;
  tmpvar_16.w = 1.0;
  tmpvar_16.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_15.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_11) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_17;
  xlat_varoutput_17.xyz = tmpvar_16.xyz;
  xlat_varoutput_17.w = 1.0;
  gl_FragData[0] = xlat_varoutput_17;
}



#endif"
}
SubProgram "gles " {
// Stats: 33 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
"!!GLES


#ifdef VERTEX

#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
attribute vec4 _glesMultiTexCoord1;
attribute vec4 _glesTANGENT;
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_World2Shadow[4];
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp vec4 _MainTex_ST;
uniform highp vec4 _DetailAlbedoMap_ST;
uniform mediump float _UVSec;
uniform mediump mat4 _LightMatrix0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = _glesNormal;
  highp vec2 tmpvar_2;
  tmpvar_2 = _glesMultiTexCoord0.xy;
  highp vec2 tmpvar_3;
  tmpvar_3 = _glesMultiTexCoord1.xy;
  mediump vec4 tmpvar_4;
  tmpvar_4 = _glesTANGENT;
  highp mat3 tangentToWorld_5;
  mediump vec4 tmpvar_6;
  mediump vec4 tmpvar_7;
  mediump vec4 tmpvar_8;
  mediump vec2 tmpvar_9;
  mediump vec4 tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11 = (_Object2World * _glesVertex);
  highp vec4 tmpvar_12;
  tmpvar_12 = (glstate_matrix_mvp * _glesVertex);
  highp vec4 texcoord_13;
  texcoord_13.xy = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  highp vec2 tmpvar_14;
  if ((_UVSec == 0.0)) {
    tmpvar_14 = tmpvar_2;
  } else {
    tmpvar_14 = tmpvar_3;
  };
  texcoord_13.zw = ((tmpvar_14 * _DetailAlbedoMap_ST.xy) + _DetailAlbedoMap_ST.zw);
  mediump vec3 n_15;
  n_15 = (tmpvar_11.xyz - _WorldSpaceCameraPos);
  highp vec3 norm_16;
  norm_16 = tmpvar_1;
  highp vec4 v_17;
  v_17.x = _World2Object[0].x;
  v_17.y = _World2Object[1].x;
  v_17.z = _World2Object[2].x;
  v_17.w = _World2Object[3].x;
  highp vec4 v_18;
  v_18.x = _World2Object[0].y;
  v_18.y = _World2Object[1].y;
  v_18.z = _World2Object[2].y;
  v_18.w = _World2Object[3].y;
  highp vec4 v_19;
  v_19.x = _World2Object[0].z;
  v_19.y = _World2Object[1].z;
  v_19.z = _World2Object[2].z;
  v_19.w = _World2Object[3].z;
  highp vec3 tmpvar_20;
  tmpvar_20 = normalize(((
    (v_17.xyz * norm_16.x)
   + 
    (v_18.xyz * norm_16.y)
  ) + (v_19.xyz * norm_16.z)));
  highp vec3 dir_21;
  dir_21 = tmpvar_4.xyz;
  highp mat3 tmpvar_22;
  tmpvar_22[0] = _Object2World[0].xyz;
  tmpvar_22[1] = _Object2World[1].xyz;
  tmpvar_22[2] = _Object2World[2].xyz;
  highp vec4 tmpvar_23;
  tmpvar_23.xyz = normalize((tmpvar_22 * dir_21));
  tmpvar_23.w = tmpvar_4.w;
  highp vec3 tmpvar_24;
  tmpvar_24 = tmpvar_23.www;
  mediump vec3 normal_25;
  normal_25 = tmpvar_20;
  mediump vec3 tangent_26;
  tangent_26 = tmpvar_23.xyz;
  mediump vec3 flip_27;
  flip_27 = tmpvar_24;
  mediump vec3 tmpvar_28;
  tmpvar_28 = (((normal_25.yzx * tangent_26.zxy) - (normal_25.zxy * tangent_26.yzx)) * flip_27);
  mediump mat3 tmpvar_29;
  tmpvar_29[0].x = tangent_26.x;
  tmpvar_29[0].y = tmpvar_28.x;
  tmpvar_29[0].z = normal_25.x;
  tmpvar_29[1].x = tangent_26.y;
  tmpvar_29[1].y = tmpvar_28.y;
  tmpvar_29[1].z = normal_25.y;
  tmpvar_29[2].x = tangent_26.z;
  tmpvar_29[2].y = tmpvar_28.z;
  tmpvar_29[2].z = normal_25.z;
  tangentToWorld_5 = tmpvar_29;
  highp vec3 v_30;
  v_30.x = tangentToWorld_5[0].x;
  v_30.y = tangentToWorld_5[1].x;
  v_30.z = tangentToWorld_5[2].x;
  tmpvar_6.xyz = v_30;
  highp vec3 v_31;
  v_31.x = tangentToWorld_5[0].y;
  v_31.y = tangentToWorld_5[1].y;
  v_31.z = tangentToWorld_5[2].y;
  tmpvar_7.xyz = v_31;
  highp vec3 v_32;
  v_32.x = tangentToWorld_5[0].z;
  v_32.y = tangentToWorld_5[1].z;
  v_32.z = tangentToWorld_5[2].z;
  tmpvar_8.xyz = v_32;
  highp vec2 tmpvar_33;
  highp vec4 cse_34;
  cse_34 = (_Object2World * _glesVertex);
  tmpvar_33 = (_LightMatrix0 * cse_34).xy;
  tmpvar_9 = tmpvar_33;
  highp vec4 tmpvar_35;
  tmpvar_35 = (unity_World2Shadow[0] * cse_34);
  tmpvar_10 = tmpvar_35;
  highp vec3 tmpvar_36;
  tmpvar_36 = (_WorldSpaceLightPos0.xyz - (tmpvar_11.xyz * _WorldSpaceLightPos0.w));
  highp float tmpvar_37;
  tmpvar_37 = tmpvar_36.x;
  tmpvar_6.w = tmpvar_37;
  highp float tmpvar_38;
  tmpvar_38 = tmpvar_36.y;
  tmpvar_7.w = tmpvar_38;
  highp float tmpvar_39;
  tmpvar_39 = tmpvar_36.z;
  tmpvar_8.w = tmpvar_39;
  gl_Position = tmpvar_12;
  xlv_TEXCOORD0 = texcoord_13;
  xlv_TEXCOORD1 = normalize(n_15);
  xlv_TEXCOORD2 = tmpvar_6;
  xlv_TEXCOORD2_1 = tmpvar_7;
  xlv_TEXCOORD2_2 = tmpvar_8;
  xlv_TEXCOORD5 = tmpvar_9;
  xlv_TEXCOORD6 = tmpvar_10;
}



#endif
#ifdef FRAGMENT

#extension GL_EXT_shadow_samplers : enable
uniform mediump vec4 _LightShadowData;
uniform mediump vec4 unity_ColorSpaceDielectricSpec;
uniform lowp vec4 _LightColor0;
uniform sampler2D unity_NHxRoughness;
uniform mediump vec4 _Color;
uniform sampler2D _MainTex;
uniform mediump float _Metallic;
uniform mediump float _Glossiness;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _LightTexture0;
varying highp vec4 xlv_TEXCOORD0;
varying mediump vec3 xlv_TEXCOORD1;
varying mediump vec4 xlv_TEXCOORD2;
varying mediump vec4 xlv_TEXCOORD2_1;
varying mediump vec4 xlv_TEXCOORD2_2;
varying mediump vec2 xlv_TEXCOORD5;
varying mediump vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  tmpvar_1 = normalize(xlv_TEXCOORD2_2.xyz);
  lowp vec4 cse_2;
  cse_2 = texture2D (_MainTex, xlv_TEXCOORD0.xy);
  mediump vec3 tmpvar_3;
  tmpvar_3 = (_Color.xyz * cse_2.xyz);
  mediump vec3 tmpvar_4;
  tmpvar_4.x = xlv_TEXCOORD2.w;
  tmpvar_4.y = xlv_TEXCOORD2_1.w;
  tmpvar_4.z = xlv_TEXCOORD2_2.w;
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2D (_LightTexture0, xlv_TEXCOORD5);
  lowp float shadow_6;
  lowp float tmpvar_7;
  tmpvar_7 = shadow2DEXT (_ShadowMapTexture, xlv_TEXCOORD6.xyz);
  mediump float tmpvar_8;
  tmpvar_8 = (_LightShadowData.x + (tmpvar_7 * (1.0 - _LightShadowData.x)));
  shadow_6 = tmpvar_8;
  mediump float atten_9;
  atten_9 = (tmpvar_5.w * shadow_6);
  mediump vec3 tmpvar_10;
  lowp vec3 tmpvar_11;
  tmpvar_11 = _LightColor0.xyz;
  tmpvar_10 = tmpvar_11;
  mediump vec3 tmpvar_12;
  tmpvar_12 = (tmpvar_10 * atten_9);
  tmpvar_10 = tmpvar_12;
  mediump vec3 viewDir_13;
  viewDir_13 = -(xlv_TEXCOORD1);
  mediump vec2 tmpvar_14;
  tmpvar_14.x = dot ((viewDir_13 - (2.0 * 
    (dot (tmpvar_1, viewDir_13) * tmpvar_1)
  )), tmpvar_4);
  tmpvar_14.y = (1.0 - clamp (dot (tmpvar_1, viewDir_13), 0.0, 1.0));
  mediump vec2 tmpvar_15;
  tmpvar_15.x = (((tmpvar_14 * tmpvar_14) * tmpvar_14) * tmpvar_14).x;
  tmpvar_15.y = (1.0 - _Glossiness);
  lowp vec4 tmpvar_16;
  tmpvar_16 = texture2D (unity_NHxRoughness, tmpvar_15);
  mediump vec4 tmpvar_17;
  tmpvar_17.w = 1.0;
  tmpvar_17.xyz = (((
    (tmpvar_3 * (unity_ColorSpaceDielectricSpec.w - (_Metallic * unity_ColorSpaceDielectricSpec.w)))
   + 
    ((tmpvar_16.w * 16.0) * mix (unity_ColorSpaceDielectricSpec.xyz, tmpvar_3, vec3(_Metallic)))
  ) * tmpvar_12) * clamp (dot (tmpvar_1, tmpvar_4), 0.0, 1.0));
  mediump vec4 xlat_varoutput_18;
  xlat_varoutput_18.xyz = tmpvar_17.xyz;
  xlat_varoutput_18.w = 1.0;
  gl_FragData[0] = xlat_varoutput_18;
}



#endif"
}
}
Program "fp" {
SubProgram "gles " {
Keywords { "POINT" "SHADOWS_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "SPOT" "SHADOWS_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NONATIVE" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "POINT" "SHADOWS_CUBE" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
"!!GLES"
}
}
 }


 // Stats for Vertex shader:
 //        gles : 4 avg math (1..8)
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 505763
Program "vp" {
SubProgram "gles " {
// Stats: 1 math
Keywords { "SHADOWS_DEPTH" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp vec4 _WorldSpaceLightPos0;
uniform highp vec4 unity_LightShadowBias;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
uniform highp mat4 _World2Object;
uniform highp mat4 unity_MatrixVP;
void main ()
{
  highp vec3 vertex_1;
  vertex_1 = _glesVertex.xyz;
  highp vec4 clipPos_2;
  if ((unity_LightShadowBias.z != 0.0)) {
    highp vec4 tmpvar_3;
    tmpvar_3.w = 1.0;
    tmpvar_3.xyz = vertex_1;
    highp vec3 tmpvar_4;
    tmpvar_4 = (_Object2World * tmpvar_3).xyz;
    highp vec4 v_5;
    v_5.x = _World2Object[0].x;
    v_5.y = _World2Object[1].x;
    v_5.z = _World2Object[2].x;
    v_5.w = _World2Object[3].x;
    highp vec4 v_6;
    v_6.x = _World2Object[0].y;
    v_6.y = _World2Object[1].y;
    v_6.z = _World2Object[2].y;
    v_6.w = _World2Object[3].y;
    highp vec4 v_7;
    v_7.x = _World2Object[0].z;
    v_7.y = _World2Object[1].z;
    v_7.z = _World2Object[2].z;
    v_7.w = _World2Object[3].z;
    highp vec3 tmpvar_8;
    tmpvar_8 = normalize(((
      (v_5.xyz * _glesNormal.x)
     + 
      (v_6.xyz * _glesNormal.y)
    ) + (v_7.xyz * _glesNormal.z)));
    highp float tmpvar_9;
    tmpvar_9 = dot (tmpvar_8, normalize((_WorldSpaceLightPos0.xyz - 
      (tmpvar_4 * _WorldSpaceLightPos0.w)
    )));
    highp vec4 tmpvar_10;
    tmpvar_10.w = 1.0;
    tmpvar_10.xyz = (tmpvar_4 - (tmpvar_8 * (unity_LightShadowBias.z * 
      sqrt((1.0 - (tmpvar_9 * tmpvar_9)))
    )));
    clipPos_2 = (unity_MatrixVP * tmpvar_10);
  } else {
    highp vec4 tmpvar_11;
    tmpvar_11.w = 1.0;
    tmpvar_11.xyz = vertex_1;
    clipPos_2 = (glstate_matrix_mvp * tmpvar_11);
  };
  highp vec4 clipPos_12;
  clipPos_12.xyw = clipPos_2.xyw;
  clipPos_12.z = (clipPos_2.z + clamp ((unity_LightShadowBias.x / clipPos_2.w), 0.0, 1.0));
  clipPos_12.z = mix (clipPos_12.z, max (clipPos_12.z, -(clipPos_2.w)), unity_LightShadowBias.y);
  gl_Position = clipPos_12;
}



#endif
#ifdef FRAGMENT

void main ()
{
  gl_FragData[0] = vec4(0.0, 0.0, 0.0, 0.0);
}



#endif"
}
SubProgram "gles " {
// Stats: 8 math
Keywords { "SHADOWS_CUBE" }
"!!GLES


#ifdef VERTEX

attribute vec4 _glesVertex;
uniform highp vec4 _LightPositionRange;
uniform highp mat4 glstate_matrix_mvp;
uniform highp mat4 _Object2World;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  xlv_TEXCOORD0 = ((_Object2World * _glesVertex).xyz - _LightPositionRange.xyz);
  gl_Position = (glstate_matrix_mvp * _glesVertex);
}



#endif
#ifdef FRAGMENT

uniform highp vec4 _LightPositionRange;
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2 = fract((vec4(1.0, 255.0, 65025.0, 1.658138e+07) * min (
    (sqrt(dot (xlv_TEXCOORD0, xlv_TEXCOORD0)) * _LightPositionRange.w)
  , 0.999)));
  highp vec4 tmpvar_3;
  tmpvar_3 = (tmpvar_2 - (tmpvar_2.yzww * 0.003921569));
  tmpvar_1 = tmpvar_3;
  gl_FragData[0] = tmpvar_1;
}



#endif"
}
}
Program "fp" {
SubProgram "gles " {
Keywords { "SHADOWS_DEPTH" }
"!!GLES"
}
SubProgram "gles " {
Keywords { "SHADOWS_CUBE" }
"!!GLES"
}
}
 }
}
Fallback "VertexLit"
}