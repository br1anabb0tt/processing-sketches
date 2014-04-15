/* @pjs preload="http://brianpabbott.com/processing/images/starry-bg.png"; */

// float smallPoint;
float largePoint;
boolean pause = false;

void setup() {
  size(640, 360);
  largePoint = 4;
  noStroke();
  PImage img;
  img = loadImage("http://brianpabbott.com/processing/images/starry-bg.png");
  background(img);
  noLoop(); // so stars start appearing only on keypress function below
}

void draw() {
  if (pause == false) {
    int starX = int(random(width));
    int starY = int(random(height));
    fill(255, 255, 255);
    ellipse(starX, starY, largePoint, largePoint);
  }
}

void keyPressed(){
  if (keyCode == ENTER) { // press ENTER to start
    loop();   
  } else if(key == ' ') { // press spacebar to pause/resume
    if(pause == false) {
      pause = true;
    } else {
      pause = false;
    }
  }
}