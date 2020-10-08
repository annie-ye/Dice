void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(192);
  int numDots = 0;
  for (int x = 30; x < 350; x = x + 60)
  {
    for (int y = 15; y < 350; y = y + 60)
    {
    Die bob = new Die(x, y);
    bob.show();
    numDots = numDots + bob.dot;
    }
  }
  fill(0);
  text("number of dots = " + numDots, 140, 380);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, dot;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    dot = (int)(Math.random()*6 +1);
  }
  void show()
  {
    //your code here
    fill(0);
    stroke(0);
    rect(myX, myY, 40, 40);
    fill(0);
    if (dot == 1)
    {
      stroke(251, 95, 62);
      fill(251, 95, 62);
      ellipse(myX + 20, myY + 20, 8, 8);
    }
    if (dot == 2)
    {
      stroke(251, 180, 62);
      fill(251, 180, 62);
      ellipse(myX + 10, myY + 20, 8, 8);
      ellipse(myX + 30, myY + 20, 8, 8);
    }
    if (dot == 3)
    {
      stroke(251, 270, 62);
      fill(251, 270, 62);
      ellipse(myX + 20, myY + 20, 8, 8);
      ellipse(myX + 10, myY + 10, 8, 8);
      ellipse(myX + 30, myY + 30, 8, 8);
    }
    if (dot == 4)
    {
      stroke(53, 218, 75);
      fill(53, 218, 75);
      ellipse(myX + 10, myY + 10, 8, 8);
      ellipse(myX + 10, myY + 30, 8, 8);
      ellipse(myX + 30, myY + 10, 8, 8);
      ellipse(myX + 30, myY + 30, 8, 8);
    }
    if (dot == 5)
    {
      stroke(53, 170, 218);
      fill(53, 170, 218);
      ellipse(myX + 10, myY + 10, 8, 8);
      ellipse(myX + 10, myY + 30, 8, 8);
      ellipse(myX + 30, myY + 10, 8, 8);
      ellipse(myX + 30, myY + 30, 8, 8);
      ellipse(myX + 20, myY + 20, 8, 8);
    }
    if (dot == 6)
    {
      stroke(121, 53, 218);
      fill(121, 53, 218);
      ellipse(myX + 10, myY + 10, 8, 8);
      ellipse(myX + 10, myY + 30, 8, 8);
      ellipse(myX + 30, myY + 10, 8, 8);
      ellipse(myX + 30, myY + 30, 8, 8);
      ellipse(myX + 10, myY + 20, 8, 8);
      ellipse(myX + 30, myY + 20, 8, 8);
    }
  }
}
