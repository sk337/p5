precision mediump float;

varying vec2 pos;

uniform float millis; 

float ramp(float val, float min, float max){
    if ((val >= min) && (val <= max)){
        return (val - min) * (1./max);
    }
    else if ((val < min)){
        return 0.;
    } 
    else{
        return 1.;
    }
}

void main() {

    if(pos.x >= 0. && pos.x <= (1./3.)) {
        gl_FragColor = mix(vec4(1.,0.,0.,1.), vec4(0.,1.,0.,1.), pos.x * 3.);
    } else if (pos.x > 1./3. && pos.x <=2./3.) {
        gl_FragColor = mix(vec4(0.,1.,0.,1.), vec4(0.,0.,1.,1.), (pos.x - 1./3.) * 3.);
    } else {
        gl_FragColor = mix(vec4(0.,0.,1.,1.), vec4(1.,0.,0.,1.), (pos.x - 2./3.) * 3.);
    }
}