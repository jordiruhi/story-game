Menu mainMenu;

void setup()
{
  fullScreen();
  smooth();

  mainMenu = new Menu("mainMenu.json");
  
  for(int i = 0; i < mainMenu.buttonData.size(); i++)
  {
    println("label: "+mainMenu.b[i].label);
  }
}

void draw()
{
  background(255);
}

void mousePressed()
{
}
