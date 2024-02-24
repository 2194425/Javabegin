int[] nummers = {3, 5, 8, 2, 7, 3, 6, 4, 8, 9}; 
void setup() {
  size(400, 200);
  textSize(16);
  

  println("Het aantal keer dat 5 voorkomt: " + telHoeVaakGetalVoorkomt(5));
  println("Het aantal keer dat 2 voorkomt: " + telHoeVaakGetalVoorkomt(2));
}


int telHoeVaakGetalVoorkomt(int getal) {
  int count = 0;
  for (int i = 0; i < nummers.length; i++) {
    if (nummers[i] == getal) {
      count++;
    }
  }
  return count;
}
