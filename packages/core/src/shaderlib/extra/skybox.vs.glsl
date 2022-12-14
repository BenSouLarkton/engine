#include <common_vert>

uniform mat4 u_mvpNoscale;

varying vec3 v_cubeUV;

void main() {

    v_cubeUV = vec3( -POSITION.x, POSITION.yz );// TextureCube is left-hand,so x need inverse
    gl_Position = u_mvpNoscale * vec4( POSITION, 1.0 );
    gl_Position.z = gl_Position.w;

}