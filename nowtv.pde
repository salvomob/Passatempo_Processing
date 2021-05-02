float ySpeed = 0.2;
float xSpeed = 0.2;
float xpos = random(800);
float ypos = random(800);
void setup() {
  size(800, 800);
}

void draw() {
  frameRate(2000);
  background(0);
  textAlign(CENTER);
  textSize(60);

  fill(255, 0, 0);
  text("NOW TV", xpos, ypos);
  xpos += xSpeed;
  ypos += ySpeed;
  move();
}

void move() {
  if (xpos+120>width || xpos -120< 0) xSpeed = -xSpeed;
  if (ypos>height || ypos-45< 0) ySpeed = -ySpeed;
}
