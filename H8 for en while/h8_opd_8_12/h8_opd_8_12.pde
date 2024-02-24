
  size(250, 250);
  background(255,255,255);
 
  int aantalHorizontaal = 8; 
  int aantalVerticaal = 8;

  int margex = 5;
  int margey = 5;
  

  int vierkantGrootte = 20;
  

  for (int i = 0; i < aantalHorizontaal; i++) {
    for (int j = 0; j < aantalVerticaal; j++) {
  
      int xpos = margex + i * (vierkantGrootte + margex);
      int ypos = margey + j * (vierkantGrootte + margey);
      
    
      if ((i + j) % 2 == 0) 
        fill(255); 
       else {
        fill(0); 
      }
      

      rect(xpos, ypos, vierkantGrootte, vierkantGrootte);
    }

  }
