class Menu
{
  JSONArray buttonData;

  String jsonPath;

  ArrayList<Button> buttons = new ArrayList<Button>();

  Menu(String tempPath)
  {
    jsonPath = tempPath;
    buttonData = loadJSONObject(jsonPath).getJSONArray("button");

    for (int i = 0; i < buttonData.size(); i++)
    {
      float x[] = new float[buttonData.size()];
      float y[] = new float[buttonData.size()];
      String label[] = new String[buttonData.size()];
      boolean enabled[] = new boolean[buttonData.size()];
      x[i] = buttonData.getJSONObject(i).getFloat("x");
      y[i] = buttonData.getJSONObject(i).getFloat("y");
      label[i] = buttonData.getJSONObject(i).getString("label");
      enabled[i] = buttonData.getJSONObject(i).getBoolean("enabled");
      buttons.add(new Button(x[i], y[i], 350, 50, label[i]));
      buttons.get(i).enabled = enabled[i];
    }
  }

  void open()
  {
    for (int i = 0; i < buttons.size(); i++)
    {
      buttons.get(i).display();
    }
  }
}