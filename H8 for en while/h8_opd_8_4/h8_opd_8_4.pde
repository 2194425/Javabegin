int startX = 50;
int startY = 50;
int squareSize = 30;

int[][] squares = new int[10][4];


for (int i = 0; i < squares.length; i++) {
  squares[i][0] = startX + i * (squareSize + 10);
  squares[i][1] = startY;
  squares[i][2] = squareSize; 
  squares[i][3] = squareSize; 
}
size(500,500);

  for (int i = 0; i < squares.length; i++) {
    rect(squares[i][0], squares[i][1], squares[i][2], squares[i][3]);
  }
