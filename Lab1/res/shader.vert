#version 120

attribute vec3 position;
attribute vec2 texCoord;
attribute vec3 norms;

varying vec2 texCoord0;
varying vec3 norms0;

uniform mat4 transform;

void main()
{
	gl_Position = transform * vec4(position, 1.0);
	texCoord0 = texCoord;
	norms0 = (transform * vec4(norms, 0.0)).xyz;
}