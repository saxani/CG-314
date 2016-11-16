import processing.video.*;
Capture video;
int brush = 20;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, 640, 480);
  video.start();
}

void draw() {
  
  video.loadPixels();
  loadPixels();  
  for (int x=max(mouseX-brush, 0); x< min(mouseX+brush, video.width); x++) {
    for (int y=max(mouseY-brush, 0); y< min(mouseY+brush, video.height); y++) {
      int thisPixel= (x+ y*video.width);
      color ColorFromImage= video.pixels[thisPixel];
      pixels[thisPixel]=ColorFromImage;
    }
  }
  updatePixels();
}

void captureEvent(Capture video) {
  video.read();
}