float Xpos= 100;
float Ypos= 200;

float start=0;
float stop=800;
float pct = 0.0; //percentage to compleation
float step = 0.0025;


float speed= 0.05;
float angle= 0.0;
float scalar= 150;


float Yoffset;

void setup(){
 size (640, 480); 
 Yoffset = height/2;
}

void draw(){
  Ypos= Yoffset +sin(angle)*scalar;
  noStroke();
  quad(Xpos+12, Ypos-48, Xpos-37, Ypos-144, Xpos-34, Ypos-150, Xpos+38, Ypos-33);
  quad(Xpos-10, Ypos-44, Xpos-54, Ypos-143, Xpos-47, Ypos-151, Xpos+9, Ypos-47);
  quad(Xpos-37, Ypos-32, Xpos-71, Ypos-141, Xpos-64, Ypos-148, Xpos+-11, Ypos-32);
  quad(Xpos+54, Ypos+35, Xpos+49, Ypos+68, Xpos+2, Ypos+44, Xpos+1, Ypos+31); 
  background (255,255,255);
  fill (125, 155,150);
  ellipse (Xpos, Ypos, 100,100);
  fill (0,0,0);
  ellipse (Xpos+30,Ypos, 20, 60);
  fill (125, 155,150);
  ellipse (Xpos+20, Ypos, 20,60);
  fill (0,0,0);
  ellipse (Xpos+10,Ypos, 20, 60);
  fill (125, 155,150);
  ellipse (Xpos, Ypos, 20,60);
  fill (255,0,0);
  ellipse(Xpos+15, Ypos, 10,10);
  fill (0,0,0);
  ellipse (Xpos-10,Ypos, 20, 60);
  fill (125, 155,150);
  ellipse (Xpos-20, Ypos, 20,60);
  
  angle+=speed;
  if (pct <1.0){
    Xpos=start+((stop-start)*pct);
    pct+=step;
  }
  if (Xpos>width+75){
    pct=0; 
  }
}