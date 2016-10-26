//Shaun Axani

Rocketship ship;
Rocketship ship2;



void setup () {
  size(800, 600);

  ship = new Rocketship(width/2, height/2, 50, color(135, 140, 180));
  ship2 = new Rocketship (width/6, height/1.3, 70, color(100, 100, 100));

}

void draw () {
  background(0);


  if (keyPressed) {
    ship.move();
    
  ship2.hover();


  } else {
    ship.hover();
    ship2.move();
  }
  ship.display();
   ship2.display();
}