
  size(270, 270);
  background(255,255,255);
  

  int aantalHorizontaal = 10;
  int aantalVerticaal = 10;
  

  int margex = 5;
  int margey = 5;
  

  int vierkantGrootte = 20;
  

  for (int i = 0; i < aantalHorizontaal; i++) {
    for (int j = 0; j < aantalVerticaal; j++) {
    
      int xpos = margex + i * (vierkantGrootte + margex);
      int ypos = margey + j * (vierkantGrootte + margey);

      rect(xpos, ypos, vierkantGrootte, vierkantGrootte);
    }
  }
