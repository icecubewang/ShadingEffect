
// Varying Variables
varying vec3 V_Normal_WCS;
varying vec3 V_Position_WCS;

// Uniform Variables
uniform samplerCube cubemap1Uniform;
uniform sampler2D textureUniform;

void main() {
	vec3 I = normalize(V_Position_WCS - cameraPosition);
	vec3 R = refract(I, normalize(V_Normal_WCS), 0.6);
  	gl_FragColor = textureCube(cubemap1Uniform, R);
	}
