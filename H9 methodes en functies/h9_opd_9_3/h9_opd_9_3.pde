int mijnGetal;
void setup(){
 println(GetalGem(17,27));
 mijnGetal=GetalGem(17,47);
 println(mijnGetal);
}

void draw (){
  
}

int GetalGem( int getal1, int getal2){
int antwoord;

antwoord= (getal1+getal2)/2;
return antwoord;
}
