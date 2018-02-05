//processynth random sound Sin
import processing.sound.*;

SinOsc sine;

float freq=400;
float amp=0.5;
float pos;

void setup(){
 size (500, 500);
 frameRate(10);
 
     // Create and start the sine oscillator.

    sine = new SinOsc(this);
    
    //Start the Sine Oscillator. 
    sine.play();
    
     background(0);
}

void draw(){
  int posX, posY;
  posX = int(random(0, 500));
  posY = int(random(0, 500));
  
 ellipse(posX, posY, 20, 20);

  
  // Map mouseX from 20Hz to 1000Hz for frequency  
  freq=map(posX, 0, width, 80.0, 1000.0);
  sine.freq(freq);

}