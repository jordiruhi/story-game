Menu mainMenu;

void setup()
{
  fullScreen();
  smooth();

  mainMenu = new Menu("mainMenu.json");
}

void draw()
{
  background(255);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);
  mainMenu.open();
}

void mousePressed()
{
  if(mainMenu.buttons.get(0).over()) // singleplayer button
  {
    //open singleplayer menu....
  }
  if(mainMenu.buttons.get(1).over())
  {
    //open multiplayer menu....
  }
  if(mainMenu.buttons.get(2).over())
  {
    //open options menu....
  }
  if(mainMenu.buttons.get(3).over())
  {
    exit(); //quits the game.
  }
}
