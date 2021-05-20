class Player {
  float posx, posy, w, h;
  color c;
  float velx;
  int punteggio=0;

  Player() {
    posx = random(0, width);
    posy = random(0, height/2-h/2);
    w = 75;
    h = 150;
    c = color(random(255), random(255), random(255));
    velx = random(3, 5);
  }

  void move() {
    posx += velx;
    if (posx < w/2 || posx > width-w/2) velx = velx*(-1);
  }

  void disegna() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(posx, posy, w, h);
    rect(posx, posy-h/2, w/2, h/2);
  }
}
