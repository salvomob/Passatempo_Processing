color c = color(0);
boolean x = false;

void setup() {
  size(600, 600);
  background(255);
  mousePressed();
  display();
}


void draw() {
}

void display() {
  ellipseMode(CENTER);
  frameRate(5);
  noStroke();
  fill(255, 0, 0);
  arc(width/4, height/2, height/2, height/2, PI, 2*PI);
  arc(width*3/4, height/2, height/2, height/2, PI, 2*PI);
  triangle(0, height/2, width/2, height, width, height/2);
}

void mousePressed() {
  if (mouseX >= 0 && mouseX < width && mouseY >= height/4 && mouseY<height && x)
    ellipseMode(CENTER);
  //background(255);
  noStroke();
  fill(c);
  arc(width/4, height/2, height/2, height/2, PI, 2*PI);
  arc(width*3/4, height/2, height/2, height/2, PI, 2*PI);
  triangle(0, height/2, width/2, height, width, height/2);
  if (x==false) x = true;
  else x = false;
}
