class Monitor{
  public
  float posx,posy,w,h,speed;
  color c;
  
  Monitor(){
    posx = random(0,width);
    posy = random(0,height/2);
    w = 80;
    h = 45;
    speed = random(-5,5);
    c = color(255,0,0);
  }
  
  void disegna(){
    rectMode(CENTER);
    strokeWeight(4);
    color d = color(0,255,255);
    stroke(d);
    fill(c);
    rect(posx,posy,w,h);
  }
  
  void move(){
    posx += speed;
    if(posx-w/2 < 0 || posx+w/2 > width) speed = speed*(-1);
  }
  
}
