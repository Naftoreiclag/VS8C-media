uniform sampler1D diffuseTex;

varying vec4 vary_diffuse;
varying vec4 vary_ambient;
varying vec2 vary_uv;

void main() {
    gl_FragColor = texture1D(diffuseTex, min(max(vary_diffuse.x, 0.01), 0.99));
}
