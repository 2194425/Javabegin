Ball[] Balls; 
int numBalls = 2;
int paddleWidth = 30;
int paddleHeight = 70;
int paddleSpeed = 7;
int leftPaddleY, rightPaddleY;
int leftScore = 0, rightScore = 0;

void setup() {
  size(800, 800);
  reset();

  leftPaddleY = height / 2 - paddleHeight / 2;
  rightPaddleY = height / 2 - paddleHeight / 2;

  Balls = new Ball[numBalls];
  for (int i = 0; i < numBalls; i++) {
    Balls[i] = new Ball();
  }
}

void draw() {
  background(0);

  fill(255, 0, 0);
  rect(0, leftPaddleY, paddleWidth, paddleHeight);
  rect(width - paddleWidth, rightPaddleY, paddleWidth, paddleHeight);

 
  if (keyPressed) {
    if (keyCode == UP) {
      rightPaddleY -= paddleSpeed;
    } else if (keyCode == DOWN) {
      rightPaddleY += paddleSpeed;
    }
  }
  if (keyPressed) {
    if (key == 'w') {
      leftPaddleY -= paddleSpeed;
    } else if (key == 's') {
      leftPaddleY += paddleSpeed;
    }
  }

  leftPaddleY = constrain(leftPaddleY, 0, height - paddleHeight);
  rightPaddleY = constrain(rightPaddleY, 0, height - paddleHeight);

  for (int i = 0; i < numBalls; i++) {
    Balls[i].tekenBall();
    Balls[i].beweegBall();
    Balls[i].checkRanden();
    Balls[i].checkPaddleCollision(leftPaddleY, rightPaddleY, paddleWidth);
    Balls[i].checkLeftScore();
    Balls[i].checkRightScore();
  }

  for (int i = 0; i < numBalls; i++) {
    if (Balls[i].checkLeftScore()) {
      rightScore++;
      reset();
    }
    if (Balls[i].checkRightScore()) {
      leftScore++;
      reset();
    }
  }

  // Laat scores zien
  textAlign(CENTER);
  textSize(32);
  fill(0, 255, 0);
  text(leftScore, width / 4, 50);
  text(rightScore, 3 * width / 4, 50);
}


 void reset() {
  if (Balls != null) {
    for (int i = 0; i < numBalls; i++) {
      Balls[i].resetBall();
    }
  }
}


class Ball {
  int ballSize = 20;
  float ballSpeedX = 7;
  float ballSpeedY = 7;
  float X;
  float Y;

  // Reset bal positie
  Ball() {
    X = width / 2;
    Y = height / 2;
  }

  void tekenBall() {
    fill(0, 255, 0);
    ellipse(X, Y, ballSize, ballSize);
  }

  void beweegBall() {
    X += ballSpeedX;
    Y += ballSpeedY;
  }

  void checkRanden() {
    if (Y < 0 || Y > height) {
      ballSpeedY *= -1;
    }
  }

  // Methode om de x-snelheid van de bal om te keren
  void omkerenXSpeed() {
    ballSpeedX *= -1;
  }


  void checkPaddleCollision(int leftPaddleY, int rightPaddleY, int paddleWidth) {

    if (X - ballSize / 2 < paddleWidth && Y > leftPaddleY && Y < leftPaddleY + paddleHeight) {
      ballSpeedX = abs(ballSpeedX); // Behoud de snelheid in dezelfde richting
    }

  
    if (X + ballSize / 2 > width - paddleWidth && Y > rightPaddleY && Y < rightPaddleY + paddleHeight) {
      ballSpeedX = -abs(ballSpeedX); // Behoud de snelheid in dezelfde richting, maar verander de richting naar links
    }
  }

 
 
 
 
  boolean checkLeftScore() {
    if (X < 0) {
      return true;
    }
    return false;
  }


  boolean checkRightScore() {
    if (X > width) {
      return true;
    }
    return false;
  }

  void resetBall() {
    X = width / 2;
    Y = height / 2;
    float angle = random(PI / 4, 3 * PI / 4);
    ballSpeedX = 7 * cos(angle);
    ballSpeedY = 7 * sin(angle);
  }
}
