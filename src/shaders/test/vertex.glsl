
uniform float uTime;

varying float vTime;
varying vec3 vPosition;
varying vec2 vUv;
void main()
{
    vec4 projectedPos = vec4(position.x, position.y, position.z, 1.0);
    gl_Position =   projectionMatrix * modelViewMatrix * projectedPos;

    vTime = uTime;
    vPosition = position;
    vUv = uv;
}