size(200,200);
background(255,255,255);

int aantalLijnen=10;
int lijnBreedte = width / aantalLijnen;
for(int i = 0; i < aantalLijnen; i++){

int x = i * lijnBreedte;
int y1 =0;
int y2 = height;
  line(x,y1,x, y2);
}
