class BlackHole {
  private 
  float x; //posizione 
  float y;
  float d; //diametro

  public 
    BlackHole(float _x, float _y ) {
    x=_x;
    y=_y;
    d=50;
  }
  
  void move() {
    ellipseMode(CENTER);
    fill(0);
    noStroke();
    ellipse(mouseX, mouseY, d, d);
  }
  
  boolean hit(Asteroid a){
    float dis = dist(x,y,a.x,a.y);
    if(dis< (d +a.d)){
      return true;
    }
    else return false;
  }
  
  void incrementa(){
  d=d+1;
  }
}
