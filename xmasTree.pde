color c = color (random(255),random(255),random(255));

void setup(){
  size(1000,1000);
    background(255);
 
}

void draw(){
  drawPallina();

  stroke(0);
  strokeWeight(4);
  fill(0,255,0);
  triangle(450,100,550,100,500,50); 
  triangle(400,200,600,200,500,100);
  triangle(350,350,650,350,500,200);
  triangle(300,500,700,500,500,350);
  fill(#7C2222);
  rect(475,500,50,150);
  fill(255,255,0);
  rect(400,650,200,100);
 
}

void drawPallina(){
  if(mousePressed){
    fill(c);
    ellipseMode(CENTER);
    ellipse(mouseX,mouseY,30,30);
  }
}

/*void drawStar(){
  if(mousePressed && mouseX>=450 && mouseX <=550 && mouseY >=0 && mouseY <=100){
    fill();
    beginShape();
    
    endShape();
  }
}*/
