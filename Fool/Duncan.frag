uniform sampler2D diffuseTex;

void main() {
	gl_FragColor = texture2D(diffuseTex, vec2(gl_TexCoord[0]));
}
