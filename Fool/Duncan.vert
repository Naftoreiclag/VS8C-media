uniform mat4 worldview_matrix;
uniform mat4 worldviewproj_matrix;
uniform mat3 inverse_transpose_worldview_matrix;
uniform vec4 light_position_0;
uniform vec4 light_diffuse_colour_0;

attribute vec4 vertex;
attribute vec3 normal;
attribute vec2 uv0;

varying vec4 vary_color;
varying vec2 vary_uv;

void main() {
    vary_uv = uv0;
    
    vec3 sNormal = normalize(normal);
    vec3 sLightDir0 = normalize(light_position_0.xyz);
    vec4 sLightColor0 = max(dot(sNormal, sLightDir0), 0.0) * light_diffuse_colour_0;
    
    vec4 sDiffuse = sLightColor0;
    
    vary_color = vec4(sDiffuse.xyz, 1.0);
    
    gl_Position = worldviewproj_matrix * vec4(vertex.xyz, 1.0);
}
