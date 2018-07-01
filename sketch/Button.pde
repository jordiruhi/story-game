class Button
{
  float x, y, w, h;
  String label;
  boolean enabled;

  Button(float tempX, float tempY, float tempW, float tempH, String tempL)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    label = tempL;
  }

  boolean over()
  {
    if (enabled && mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h))
    {
      return true;
    } 
    return false;
  }

  void display()
  {
    if (enabled)
    {
      fill(218);
      stroke(141);
    } else
    {
      fill(141);
      stroke(218);
    }
    rect(x, y, w, h);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(h/2.3);
    text(label, x + w/2, y+h/2);
  }
}