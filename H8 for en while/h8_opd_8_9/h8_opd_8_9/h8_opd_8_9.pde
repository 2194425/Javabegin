size(200, 200);
background(255, 255, 255);

int sizeC = 100;
int ruimte = 15; 

for(int i = 0; i < 50; i++){
  ellipse(0 + i * ruimte, 0 + i * ruimte, sizeC, sizeC);
  sizeC = sizeC - 2; 
}
