class Campo {
  float w, h;

  Campo() {
    w = width;
    h = height;
  }

  void show() {
    strokeWeight(5);
    stroke(255);
    fill(10, 255, 10);
    rectMode(CORNER);
    rect(0, 0, w, h);
    rectMode(CENTER);
    rect(w/2, 0, w/4, h/5);
    rect(w/2, h, w/4, h/5);
    line(0, h/2, w, h/2);
  }
}
