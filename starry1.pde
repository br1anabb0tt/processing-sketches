/* @pjs preload="http://brianpabbott.com/processing/images/starry-bg.png"; */

// float smallPoint;
float largePoint;
PImage img;

void setup() {
  size(640, 360);
//  smallPoint = 2;
  largePoint = 4;
  noStroke();
//  background(0);
  img = loadImage("http://brianpabbott.com/processing/images/starry-bg.png");
  background(img);
}

void draw() { 
  int starX = int(random(width));
  int starY = int(random(height));
  fill(255, 255, 255);
  ellipse(starX, starY, largePoint, largePoint);
}

void mousePressed() {
   noLoop();
}

