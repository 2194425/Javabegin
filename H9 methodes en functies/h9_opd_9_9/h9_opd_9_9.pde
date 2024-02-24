
  
  void setup() {
  size(500, 500);
  background(255,255,255);
  tekenBoom(width/2, height, 100, -PI/2, 7); 
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
