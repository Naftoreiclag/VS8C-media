uniform sampler2D diffuseTex;
varying vec2 vary_uv;

void main() {
    gl_FragColor = texture2D(diffuseTex, vary_uv);
}
