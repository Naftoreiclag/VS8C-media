uniform mat4 worldview_matrix;
uniform mat4 worldviewproj_matrix;

attribute vec4 vertex;
attribute vec2 uv0;

varying vec2 vary_uv;

void main() {
    gl_Position = worldviewproj_matrix * vec4(vertex.xyz, 1.0);
    vary_uv = uv0;
}
