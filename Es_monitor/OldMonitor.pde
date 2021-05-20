class OldMonitor extends Monitor {
  public
    float posx, posy, w, h, speed;
  color c;

  OldMonitor() {
    posx = random(0, width);
    posy = random(height/2, height);
    w = 80;
    h  = 60;
    speed = random(-5, 5);
    c = color(0, 255, 0);
  }

  void disegna() {
    fill(c);
    stroke(128);
    strokeWeight(4);
    rect(posx, posy, w, h);
  }

  void update() {
    if (posx-w/2 < 0 || posx+w/2 > width) speed = speed*(-1);
    if (mouseX >= posx-w/2 && mouseX<posx+w/2 && mouseY <= posy+h/2 && mouseY >= posy-h/2) fermo();
    else posx+=speed;
  }

  void fermo() {
    fill(0);
    stroke(128);
    strokeWeight(4);
    rect(posx, posy, w, h);
    stroke(255);
    line(posx-w/2, posy, posx+w/2, posy);
  }
}
