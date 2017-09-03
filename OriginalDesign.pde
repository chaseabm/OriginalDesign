//TIE FIGHTER!
int stars = 0;

void setup()
{
  size(800,600);
  background(15);
  frameRate(60);
}
void draw()
{
  galaxy();
  leftWing();
  rightWing();
  body();
}
void body()
{
  //hull
  stroke(115);
  strokeWeight(8);
  fill(135);
  ellipse(400,300,120,120);
  //cockpit
  fill(40);
  strokeWeight(8);
  stroke(100);
  ellipse(400,300,75,75);
  //cockpit window frame
  strokeWeight(4);
  line(365, 300, 435, 300);
  line(400 ,265 , 400, 335);
  ellipse(400, 300, 35, 35);
  //lasers
  strokeWeight(2);
  ellipse(375, 342, 10, 10);
  ellipse(425, 342, 10, 10);
}

void leftWing()
{
  noStroke();
  fill(135);
  //arm out
  triangle(370, 265, 370, 335, 280, 300);
  rect(270, 290, 40, 20);
  //wing
  fill(100);
  rect(255, 150, 15, 300);
}

void rightWing()
{
  noStroke();
  fill(135);
  //arm out
  triangle(430, 265, 430, 335, 520, 300);
  rect(490, 290, 40, 20);
  //wing
  fill(100);
  rect(530, 150, 15, 300);
}

void galaxy()
{
  while(stars <= 250)
  {
    float x = random(801);
    float y = random(601);
    fill(255);
    noStroke();
    ellipse(x, y, 2, 2);
    stars += 1;
  }
}