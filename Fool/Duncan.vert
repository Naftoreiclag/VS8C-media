uniform mat4 worldview_matrix;
uniform mat4 worldviewproj_matrix;
attribute vec4 vertex;

void main() {
    gl_Position = worldviewproj_matrix * vec4(vertex.xyz, 1.0);
}
