void setup() {
  size(800, 300);
  background(0);
}



void draw() {
  smooth();
  ellipseMode(CENTER);
  strokeWeight(4);
  stroke(255);
  noFill();
  ellipse(width/2, height/2, 190, 190);
  fill(255, 0, 0);
  textSize(50);
  textAlign(CENTER);// sposta il centro del testo al centro delle coordinate che si passano a text()
  text("NISSAN", width/2, height/2+10);
}
