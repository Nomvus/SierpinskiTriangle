int s = 900;
public void setup()
{
  background(0);
  size(1000,1000);
}
public void draw()
{
  sierpinski(100,900,800);
  s = s/2;
  fill((int)(Math.random()*255));
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= s)
    triangle(x, y, x+len/2, y-len, x+len,y);
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
