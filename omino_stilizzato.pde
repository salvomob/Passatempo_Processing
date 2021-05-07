Maschio m = new Maschio();
void setup() {
  size(500, 1000);
}

void draw() {
  translate(0, 100);
  background(0);
  m.display();
}
class Maschio {
  private
    int  p1y, p2y, p3y, p4y, p5y, p6y, p7y, p8y, p9y, p10y, p11y, p12y, p13y, p14y, p15y, p16y, p17y, p18y, p19y, p20y, p21y, p22y;
  int  p1x, p2x, p3x, p4x, p5x, p6x, p7x, p8x, p9x, p10x, p11x, p12x, p13x, p14x, p15x, p16x, p17x, p18x, p19x, p20x, p21x, p22x;
  public
    Maschio() {
    p1x = 100;
    p1y = 100;
    p2x = 400;
    p2y = p1y;
    p3x = p2x;
    p3y = 200;
    p4x = p1x;
    p4y = p3y;
    p5x = p3x+10;
    p5y = p3y;
    p6x = p3x+100;
    p6y= p3y;
    p7x= p6x;
    p7y = p6y +300;
    p8x = p5x;
    p8y = p7y;
    p9x = p4x -10;
    p9y = p4y;
    p10x = 0;
    p10y = p4y;
    p11x = p9x;
    p11y = p9y+300;
    p12x = 0;
    p12y = p10y+300;
    p13x = p4x;
    p13y = p4y+300;
    p14x = p3x;
    p14y = p13y;
    p15x = p14x;
    p15y = p14y +100;
    p16x = p13x;
    p16y = p13y +100;
    p17x = p16x+145;
    p17y = p16y;
    p18x = p17x;
    p18y = p17y+300;
    p19x = p16x;
    p19y = p16y+300;
    p20x = p17x+10;
    p20y = p17y;
    p21x  = p20x;
    p21y = p18y;
    p22x = p15x;
    p22y = p18y;
  }

  void display() {
    ellipseMode(CENTER);
    fill(255);
    noStroke();
    beginShape();//inizio r1
    vertex(p1x, p1y);
    vertex(p2x, p2y);
    vertex(p3x, p3y);
    vertex(p4x, p4y);
    endShape();//fine r1
    arc(p4x, p4y, 200, 200, PI, 3*PI/2);//A1
    arc(p3x, p3y, 200, 200, -PI/2, 0);//A2
    beginShape();//inizio r2
    vertex(p5x, p5y);
    vertex(p6x, p6y);
    vertex(p7x, p7y);
    vertex(p8x, p8y);
    endShape();//fine r2
    beginShape();//inizio r3
    vertex(p9x, p9y);
    vertex(p10x, p10y);
    vertex(p12x, p12y);
    vertex(p11x, p11y);
    endShape();//fine r3
    beginShape();//inizio r4
    vertex(p3x, p3y);
    vertex(p4x, p4y);
    vertex(p13x, p13y);
    vertex(p14x, p14y);
    endShape();//fine r4
    beginShape();//inizio r5;
    vertex(p13x, p13y);
    vertex(p14x, p14y);
    vertex(p15x, p15y);
    vertex(p16x, p16y);
    endShape();//fine r5
    beginShape();//inizio r6
    vertex(p16x, p16y);
    vertex(p17x, p17y);
    vertex(p18x, p18y);
    vertex(p19x, p19y);
    endShape();//fine r6
    beginShape();//inizio r7
    vertex(p15x, p15y);
    vertex(p20x, p20y);
    vertex(p21x, p21y);
    vertex(p22x, p22y);
    endShape();//fine r7
    ellipse(250, 0, 185, 185);
  }
}
