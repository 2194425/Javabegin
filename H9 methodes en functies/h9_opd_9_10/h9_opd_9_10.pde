void setup() {
  size(500, 500);
  background(255,255,255);
  tekenBos(7); 
}

void tekenBos(int aantalBomen) {
  for (int i = 0; i < aantalBomen; i++) {
    float x = random(width); 
    float y = height; 
    float lengte = random(50, 150);
    float hoek = -PI/2; 
    int niveau = int(random(3, 8)); 
    
    tekenBoom(x, y, lengte, hoek, niveau);
  }
}

void tekenBoom(float x, float y, float lengte, float hoek, int niveau) {
  if (niveau == 0) return; 
  
  float xEind = x + cos(hoek) * lengte;
  float yEind = y + sin(hoek) * lengte;
  
  stroke(0);
  line(x, y, xEind, yEind); 
  

  float nieuweLengte = lengte * 0.7;
  float hoekLinks = hoek - PI/4;
  float hoekRechts = hoek + PI/4;
  

  tekenBoom(xEind, yEind, nieuweLengte, hoekLinks, niveau - 1);
  

  tekenBoom(xEind, yEind, nieuweLengte, hoekRechts, niveau - 1);
}
