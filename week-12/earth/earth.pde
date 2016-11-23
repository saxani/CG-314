float x, y, z;
float rotation = PI/48;

void setup(){
   size(800, 600, P3D); 
   x = width/2;
   y = height/2;
   z = 0;
   noFill();
   stroke(255);
}

void draw(){
  //lights();
  background(0);

translate(width/2, height/2, 0);
stroke(255);
rotateX(rotation);
rotateY(rotation/2);
rotateZ(rotation*1.5);

beginShape();
vertex(-100, -100, -100);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);

endShape();

rotation+=radians(0.5);
}