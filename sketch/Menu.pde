class Menu
{
  JSONObject menu;
  JSONArray buttonData;
  
  Button b[];
  String label[];
  float x[], y[];
  boolean enabled[];

  Menu(String jsonPath)
  {
    menu = loadJSONObject(jsonPath);
    buttonData = menu.getJSONArray("button");
    
    Button b[] = new Button[buttonData.size()];
    float x[] = new float[buttonData.size()];
    float y[] = new float[buttonData.size()];
    String label[] = new String[buttonData.size()];
    boolean enabled[] = new boolean[buttonData.size()];
    
    for (int i = 0; i < buttonData.size(); i++)
    {
      x[i] = buttonData.getJSONObject(i).getFloat("x");
      y[i] = buttonData.getJSONObject(i).getFloat("y");
      label[i] = buttonData.getJSONObject(i).getString("label");
      enabled[i] = buttonData.getJSONObject(i).getBoolean("enabled");
      
      b[i] = new Button(x[i], y[i], 350, 50, label[i]);
      b[i].enabled = enabled[i];
    }
  }
  
  void open()
  {
    for(int i = 0; i < buttonData.size(); i++)
    {
      b[i].display();
    }
  }
}