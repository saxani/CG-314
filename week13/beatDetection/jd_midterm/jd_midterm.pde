import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect beat;

boolean isFaceRight = true;

PImage beatsie1;
PImage beatsie2;
PFont hellovetica;


float a = width;
float b = height;
float angle = 0.0;
float offset;
float xOffset;
float yOffset;
float scalar = width/2;
float speed = .09;
float x4; 
float y4;
float diameter = 50;
float radius = diameter/2;
float direction = 2;
float xDirection = 3;
float yDirection = 30;


void setup() {
  size(600, 600);
  offset = height/2;
  x4 = width/2;
  y4 = height/2;

  hellovetica = createFont("hellovetica.ttf", 12);
  textFont(hellovetica);
  beatsie1 = loadImage("beatsie1.png");
  beatsie2 = loadImage("beatsie2.png");
  background(0, 0, 0);


  minim = new Minim(this);
  song = minim.loadFile("Poseidon Original.mp3", 2048);
  song.play();
  // a beat detection object song SOUND_ENERGY mode with a sensitivity of 10 milliseconds
  beat = new BeatDetect();
}

void draw() {
  noStroke();
  background(0);
  fill(random(mouseX), random(mouseY), mouseX);

  beat.detect(song.mix);
  if ( beat.isOnset() ){
    if(isFaceRight){
      isFaceRight = false;
    } else {
      isFaceRight = true;
    }
  }
  
  if (isFaceRight){
    image(beatsie2, 1, 1, 600, 600);
  } else {
    image(beatsie1, 1, 1, 600, 600);
  }
 

  
  //bg movement  

  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
  float x = xOffset + cos(angle) * scalar;
  float y = yOffset + sin(angle + 6) * scalar;

  angle+= speed;
  //x++;
  //if(x4>width + radius){
  //x4=-radius;
  x4 = x4 + xDirection;
  y4 = y4 + yDirection;

  if (x4>width - radius || x4<radius) {
    xDirection = -xDirection;
  } 
  if (y4>height - radius || y4<radius) {
    yDirection = -yDirection;
  }

  //bg graphics  
  rect(width/2 - 300, y1, 40, 400);
  rect(width/2 - 260, y2, 40, 400);
  rect(width/2 -220, y3, 40, 400);
  rect(width/2 + 260, y1, 40, 400);
  rect(width/2 + 220, y2, 40, 400);
  rect(width/2 + 180, y3, 40, 400);

  //mascot!
  //if (key == CODED) {
  //  if (keyCode == LEFT) {
  //    image(beatsie1, 1, 1, 600, 600);
  //    text("RIGHT!", 260, 80);
  //  } else if ( keyCode == RIGHT) {
  //    image(beatsie2, 1, 1, 600, 600);
  //    text("LEFT!", 260, 80);
  //  }
  //}
  //text 
  fill(210);
  text("pretend there's a score count here", 140, 580);
}