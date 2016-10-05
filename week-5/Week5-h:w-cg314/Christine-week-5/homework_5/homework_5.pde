//Christine Negron Homework5
//using the keys to move the robot
 




float speedy=400;
float speedx=5;
float x;
float y;

float minispeedu=10;
float minispeedv=10;
float u;
float v;
float hey=187;

void setup() {

  size(600, 700);
  y=400;
  x=height/2;
   u=random(50,width);
  v=random(60,height);
  
}





void draw() {

  background(255);
 

  
  //move robot using the arrow keys

  if (keyPressed) {
    if (key == CODED) {

      if (keyCode ==RIGHT) {
        x+=5;
      } else if (keyCode ==LEFT) {
        x-=5;
      }
      
      if(keyCode==UP){
       speedy--; 
       if (speedy<=380){
        speedy=400; 
       }
      }
    }
  }


  if (x==width) {

    x-=20;
  } else if (x==0) {

    x+=20;
  }
  
  
  y=speedy;
  
  
 
  for (float i =18; i<width; i+=54)
  for (float h =16; h<height; h+=65) {
    fill(211,242,237);
      ellipse(i, h, 30, 30);
      
  


    }
    
    
   
    
 
  

  //building robot
  
  fill(17,76,74);
  noStroke();
  rect(x-83, y-115, 147, hey); 
  fill(0,0,0);
  rect(x-78, y-109, 120, hey-116); 
  fill(154,253,233);
  ellipse(x-48, y-79, 28, 21);
  ellipse(x-(-1), y-79, 28, 21);
  fill(120,200,230);
  rect(x-(-64), y-56, 47, 26);
  rect(x-(-85), y-105, 26, 75);
  rect(x-130, y-56, 47, 26);
  rect(x-131, y-106, 26, 76);
  fill(11, 69, 70);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  //placing minibots
     pushMatrix();
     scale(.2);
    translate(15,60);
  minirobot();
translate(30,250);
    minirobot();
 translate(60,100);
    minirobot();
translate(120,60);    
    minirobot();

  
    popMatrix();
text("use LEFT or RIGHT keys to move robot", 100, 100);
text("if you press up the robot goes up to a certain extent", 100, 130);

}

void minirobot(){
  

  fill(17,76,74);
  noStroke();
  rect(u-83, v-115, 147, 181); 
  fill(0,0,0);
  rect(u-78, v-109, 120, 67); 
  fill(154,253,233);
  ellipse(u-48, v-79, 28, 21);
  ellipse(u-(-1), v-79, 28, 21);
  fill(120,200,230);
  rect(u-(-64), v-56, 47, 26);
  rect(u-(-85), v-105, 26, 75);
  rect(u-130, v-56, 47, 26);
  rect(u-131, v-106, 26, 76);
  fill(11, 69, 70);
    
    u=minispeedu+u;
    v=minispeedv+v;
    if (u> width*5||u<0){
     minispeedu=-minispeedu; 
    }
    
    if (v> height*5||v<0){
     minispeedv=-minispeedv; 
    } 
}