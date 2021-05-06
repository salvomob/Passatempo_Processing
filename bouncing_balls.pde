Ball[] palla = new Ball[10];


void setup(){
  size(1000,1000);
  //stroke(255);
  smooth();
  for(int i=0; i< palla.length;i++){
    palla[i] = new Ball();
    
  }
}

void draw(){
  background(0);
  for(int i=0;i<palla.length;i++){
    palla[i].move();
    palla[i].display();
  }
}

class Ball{
private
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float dim;
public
  Ball(){
    c = color(random(0,255),random(0,255),random(0,255));
    xPos = random(1000);
    yPos = random(1000);
    xSpeed = random(1,4);
    ySpeed = random(1,4);
    dim = random(10,100);
  }
  
  void move(){
    if(xPos+dim/2 > 1000 || xPos - dim/2 <0){
      xSpeed = xSpeed*(-1);
    }
    if(yPos+dim/2 > 1000 || yPos - dim/2 <0){
      ySpeed = ySpeed*(-1);
    }
    xPos+=xSpeed;
    yPos+=ySpeed;
  }
  
  void display(){
    fill(c);
    ellipse(xPos,yPos,dim,dim);
    //if(mouseX)
  }
}
