uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMutiplier;

varying float vElevation;

void main() {
    float mixStringthColor = (vElevation + uColorOffset) * uColorMutiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStringthColor);
    gl_FragColor = vec4(color, 1.0);
}