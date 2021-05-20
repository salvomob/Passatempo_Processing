class Asteroid {
  float speedX, speedy, x, y, d;
  public 
    Asteroid() {
    speedX=speedy =3;
    x=random(width);
    y=random(height/2, height);
    d=30;
  }

  void move(BlackHole b) {

    float dx=(b.x-x)/dist(b.x,x,b.y,y);
    float dy=(b.y-y)/dist(b.x,x,b.y,y);
    speedX = dx*3;
    speedy = dy*3;
  }

  void update() {
    x+=speedX;
    y+=speedy;
  }

  void disegna() {
    ellipseMode(CENTER);
    fill(#AA6621);
    noStroke();
    ellipse(x, y, 30, 30);
  }
}
