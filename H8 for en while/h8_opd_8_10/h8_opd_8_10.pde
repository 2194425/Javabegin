
  size(500, 500);
  background(255,255,255);

  int aantalVierkanten = 5;
  

  int vierkantGrootte = 50;

  int startx = 50;
  int starty = 50;
  

  for (int i = 0; i < aantalVierkanten; i++) {
  
    rect(startx + i * 20, starty + i * 20, vierkantGrootte, vierkantGrootte);
  }
