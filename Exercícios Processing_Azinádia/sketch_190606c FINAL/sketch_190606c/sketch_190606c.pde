int tileCount = 20;

color colorLeft = color(197, 0, 123);
color colorRight = color(87, 35, 129);

int alphaLeft = 100;
int alphaRight = 100;

int actRandomSeed = 0;
int actStrokeCap = ROUND;


void setup() {
  size(600, 600);
}


void draw() {
  
  colorMode(HSB, 360, 100, 100, 100);
  background(360);
  smooth();
  noFill();
  strokeCap(actStrokeCap);
  
  randomSeed(actRandomSeed);

  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {

      int posX = width/tileCount*gridX;
      int posY = height/tileCount*gridY;

      int toggle = (int) random(0,2);

      if (toggle == 0) {
        stroke(colorLeft, alphaLeft);
        strokeWeight(mouseX/10);
        line(posX, posY, posX+width/tileCount, posY+height/tileCount);
      }
      if (toggle == 1) {
        stroke(colorRight, alphaRight);
        strokeWeight(mouseY/10);
        line(posX, posY+width/tileCount, posX+height/tileCount, posY);
      }
    }
  }
  }


void mousePressed() {
  actRandomSeed = (int) random(100000);
}


void keyReleased(){

  
  if (key == '1') actStrokeCap = ROUND;  
  if (key == '2') actStrokeCap = SQUARE;
  if (key == '3') actStrokeCap = PROJECT; 
  
  if (key == '4'){
    if (colorLeft == color(0)) {
      colorLeft = color(323, 100, 77);
    } else {
      colorLeft = color(0);
    } 
  }
  if (key == '5'){
    if (colorRight == color(0)) {
      colorRight = color(273, 73, 51);
    } else {
      colorRight = color(0);
    } 
  }
  
  if (key == '6') {
    if (alphaLeft == 100) {
      alphaLeft = 50;
    } else {
      alphaLeft = 100;
    }
  }
  if (key == '7') {
    if (alphaRight == 100) {
      alphaRight = 50;
    } else {
      alphaRight = 100;
    }
  }
    
  if (key == '0'){
    actStrokeCap = ROUND;
    colorLeft = color(0);
    colorRight = color(0);
    alphaLeft = 100;
    alphaRight = 100;
  }
}