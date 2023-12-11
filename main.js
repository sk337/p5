import './style.css'
import {sketch} from 'p5js-wrapper';

let exampleShader;


// load in the shader
sketch.preload = function() {
  exampleShader = loadShader('vert.glsl', 'frag.glsl');
};

sketch.setup = function() {
  createCanvas(600, 600, WEBGL);
  shader(exampleShader);
};

sketch.draw = function() {
  exampleShader.setUniform("millis", millis()); 
  // Run shader
  rect(-width/2, -height/2, width);
}

