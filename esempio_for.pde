void setup(){
  size(400,300);
}

void draw(){
  ellipseMode(CENTER);
  background(0);
  noFill();
  stroke(255);
  for(int i = 0; i < 3; i++){
    ellipse(i*100+100,height/2,150,150);
  }
  for(int i = 0; i < 2; i++){
    ellipse(i*100+150,height/2+50,150,150);
  }
}
