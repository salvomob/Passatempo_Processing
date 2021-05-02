import peasy.*;
float angle = 0.1;
float acc =  1.001;
void setup(){
size(1000,800,P3D);
}
void draw(){
  background(0);
  translate(width/2,height/2);
//noStroke();
angle*=acc;
rotateY(angle);
fill(255,0,0,128);
box(100);
translate(200,0,0);
fill(0,255,0,128);
box(100);}
