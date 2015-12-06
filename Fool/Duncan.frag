uniform sampler2D diffuseTex;

void main() {
    vec4 col = texture2D(diffuseTex, vec2(gl_TexCoord[0]));
    gl_FragColor = vec4(col.xy, 1.0, 1.0);
}
