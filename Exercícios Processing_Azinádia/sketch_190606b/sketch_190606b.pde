color strokeColor = color(50, 10);


void setup(){
  size(720, 720);
  colorMode(HSB, 360, 100, 100, 255);
  smooth();
  noFill();
  background(25,60,250);
}

void draw(){
  if(mousePressed){
    pushMatrix();
    translate(width/2,height/2);

    int circleResolution = (int)map(mouseY+100,0,height,2, 10);
    int radius = mouseX-width/2;
    float angle = TWO_PI/circleResolution;

    strokeWeight(2);
    stroke(strokeColor);

    beginShape();
    for (int i=0; i<=circleResolution; i++){
      float x = 0 + cos(angle*i) * radius;
      float y = 0 + sin(angle*i) * radius;
      vertex(x, y);
    }
    endShape();
    
    popMatrix();
  }
}

void keyReleased(){
  if (key == DELETE || key == BACKSPACE) background(300);


  switch(key){
  case '1':
    strokeColor = color(255, 150);
    break;
  case '2':
    strokeColor = color(192, 100, 255, 10);
    break;
  case '3':
    strokeColor = color(52, 100, 71, 10);
    break;
  }
    }