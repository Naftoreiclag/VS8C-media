uniform sampler2D diffuseTex0;
uniform sampler2D diffuseTex1;
uniform sampler2D furTex;

varying vec4 vary_diffuse;
varying vec4 vary_ambient;
varying vec2 vary_uv;

void main() {
    vec4 mixColor = vec4(0.0, 0.0, 0.0, 1.0);
    float mix = min(vary_diffuse.x + (vary_diffuse.x * texture2D(furTex, vary_uv).x), 1.0);
    mixColor += mix * texture2D(diffuseTex0, vary_uv);
    mixColor += (1 - mix) * texture2D(diffuseTex1, vary_uv);
    gl_FragColor = mixColor;
}
