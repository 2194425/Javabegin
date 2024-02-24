int[] fibonacciSequence(int n) {
  int[] fibSequence = new int[n];  
  

  fibSequence[0] = 0;
  fibSequence[1] = 1;

  for (int i = 2; i < n; i++) {
    fibSequence[i] = fibSequence[i - 1] + fibSequence[i - 2];
  }
  
  return fibSequence;
}

  int n = 10; 
  int[] fibSequence = fibonacciSequence(n);
  
{
  println("De rij van Fibonacci tot het " + n + "e getal:");
  for (int i = 0; i < n; i++) {
    print(fibSequence[i] + ", ");
  }
}
