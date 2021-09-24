void setup()
{
  size(1000,800);
  noLoop();
  
}
void draw()
{
lightning();
}
void mousePressed()
{
  background(0,0,0);
  redraw();
}

void lightning()
{
  strokeWeight(6);
  stroke((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
  int xStart;
  int yStart;
  int xEnd;
  int yEnd;
  int leftRight;
  xStart = 500;
  yStart = 10;
 xEnd = xStart+(int)(Math.random()*50);
 yEnd = yStart+(int)(Math.random()*60);
  
 line(xStart, yStart, xEnd, yEnd);
 
 
 while (xEnd<1000){

   xStart = xEnd;
   yStart = yEnd;
   int xRandomChange = (int)(Math.random()*50);
   int yRandomChange = (int)(Math.random()*40);
    leftRight = (int)(Math.random()*2);
   if (leftRight == 0)
  {
  xEnd = xStart+(int)(Math.random()*50);
  }
  else 
  {
    xEnd = xStart-(int)(Math.random()*50);
  }
  yEnd = yStart+(int)(Math.random()*50);
 
   //xEnd = xStart+(int)(Math.random()*xRandomChange);
   //yEnd = yStart+(int)(Math.random()*yRandomChange);
   line(xStart, yStart, xEnd, yEnd);
 }
 stroke(0,0,0);
 fill(255,255,255);
 rect(500, 750, 50,50);
 triangle(490, 749, 560, 749, 525, 715);
 }
