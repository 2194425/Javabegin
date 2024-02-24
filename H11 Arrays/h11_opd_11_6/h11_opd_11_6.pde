int[] nummers = {3, 5, 8, 2, 7, 3, 6, 4, 8, 9}; 
int zoekWaarde = 3;

void setup() {
  size(500, 500);
  textSize(16);
  

  int count = zoekAantal(nummers, zoekWaarde);
  

  background(0,0,0);
  textAlign(CENTER, CENTER);
  text("Het getal " + zoekWaarde + " komt " + count + " keer voor in de array.", width/2, height/2);
}


int zoekAantal(int[] arr, int waarde) {
  int count = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == waarde) {
      count++;
    }
  }
  return count;
}
