// bisogna alzare i fari sull'asse delle Y

float raggio = 100;


void setup(){
 size(1600,600);
  background(0);
}

void draw(){
  for(int i=9; i < 13  ;i++){
    ellipseMode(CENTER);
    strokeWeight(4);
    stroke(255);
    noFill();
    ellipse(i*75,height/2,raggio,raggio);
  }
  fill(255,0,0);
  textSize(30);
  text("Audi",100,2*height/3);  
  fill (255);
  line(width/8,height/2-50,width/4,height/2);
  line(7*width/8,height/2-50,3*width/4,height/2);
  line(3*width/4,height/2,3*width/4-20,height/2+50);
  line(3*width/4-20,height/2+50,7*width/8,height/2);
  line(width/4,height/2,width/4+20,height/2+50);
  line(width/4+20,height/2+50,width/8,height/2);
}
