uniform mat4 world_matrix;
uniform mat4 worldview_matrix;
uniform mat4 worldviewproj_matrix;
uniform vec4 light_position_0;
uniform vec4 light_diffuse_colour_0;
uniform vec4 surface_diffuse_colour;
uniform vec4 surface_ambient_colour;

uniform vec4 ambient_light_colour;

attribute vec4 vertex;
attribute vec3 normal;
attribute vec2 uv0;

varying vec4 vary_color;
varying vec2 vary_uv;

void main() {
    vary_uv = uv0;
    
    vec3 sNormal = vec3(world_matrix * vec4(normal, 0.0));
    vec3 sLightDir0 = normalize(light_position_0.xyz);
    vec4 sLightColor0 = max(dot(sNormal, sLightDir0), 0.0) * light_diffuse_colour_0;
    
    vec4 sDiffuse = sLightColor0 * surface_diffuse_colour;
    vec4 sAmbient = ambient_light_colour * surface_ambient_colour;
    
    vary_color = vec4((sDiffuse + sAmbient).xyz, 1.0);
    
    gl_Position = worldviewproj_matrix * vec4(vertex.xyz, 1.0);
}
