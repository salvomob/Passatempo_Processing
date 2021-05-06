boolean alreadyClicked;
int x1, y1, x2, y2;

final static color BG = #4080A0, FG = #FFFF00;
final static short BOLD = 3, FPS = 30;

void setup() {
  size(600, 400);
  frameRate(FPS);
  noLoop();
  smooth();

  background(BG);
  stroke(FG);
  strokeWeight(BOLD);
}

void draw() {
  if (alreadyClicked) {
    background(BG);
    point(x1, y1);
    println("x1: " + x1 + "\t y1: " + y1);
    return;
  } 

  line(x1, y1, x2, y2);
  println("x2: " + x2 + "\t y2: " + y2 + "\n");
}

void mouseClicked() {
  redraw();

  if (alreadyClicked) {
    x2 = mouseX;
    y2 = mouseY;
    alreadyClicked = false;
    return;
  } 

  x1 = mouseX;
  y1 = mouseY;
  alreadyClicked = true;
}
