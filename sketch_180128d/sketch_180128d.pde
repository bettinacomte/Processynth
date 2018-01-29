//processynth random sound Sin
import processing.sound.*;

SinOsc sine;

float freq=400;
float amp=0.5;
float pos;

void setup(){
 size (500, 500);
 frameRate(5);
 
     // Create and start the sine oscillator.

    sine = new SinOsc(this);
    
    //Start the Sine Oscillator. 
    sine.play();
}

void draw(){
 background(random(255), random(255), random(255), random(255));
 ellipse(random(0, 500), random(0, 500), 20, 20);

  
  // Map mouseX from 20Hz to 1000Hz for frequency  
  freq=map(random(0, 500), 0, width, 80.0, 1000.0);
  sine.freq(freq);

}