// fragment shader
varying vec2 v_vTexcoord;
uniform float time;

void main()
{
    vec2 uv = v_vTexcoord;
    uv += sin(time + uv.x * 10.0) * 0.1; // Adjust the frequency and amplitude as needed

    gl_FragColor = texture2D( gm_BaseTexture, uv );
}

