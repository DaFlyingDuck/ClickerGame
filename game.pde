
void game() {
  
  background(255);
 

  // UPDATE VALUES FOR Ball location, velocity and acceleration
  update();
  
  //bounce code
  bounce();
  
  //RADIUS OF BALL GETTING SMALLER
  if (radius > 10)   radius = radius - 0.01;
  diameter = round(radius * 2);
  
  //display target ball

  targetChoice();

  
  //Pause button
  strokeWeight(3);
  if (dist(mouseX, mouseY, 40, 40) <= 30) {
    stroke(0);
  } else { 
    stroke(255);
  }
  fill(180);
  circle(40, 40, 60);
  fill(0);
  stroke(0);
  strokeWeight(5);
  line(32, 30, 32, 50);
  line(48, 30, 48, 50);

  //Score and Lives
  textSize(30);
  fill(0);
  text("Score: " + score, width/2, height/18);
  text("Lives: " + lives, width/2, height/9);
  
}

void gameClicks() {
  
  PVector Mouse = new PVector(mouseX, mouseY);
  PVector dist = PVector.sub(Mouse, Ball);
  
  if (dist.mag() <= radius * 1.1) { //checks if target was clicked
    score = score + 1;
    clicked.rewind();
    clicked.play();
    
  } else if (dist(mouseX, mouseY, 40, 40) < 30) {   //checks if the pause button was clicked
    mode = PAUSE;
    
  } else { // if missed
    
    lives = lives - 1;
    if (lives <= 0) {
      gameover.rewind();
      mode = GAMEOVER;
    } else {
      miss.rewind();
      miss.play();
    }
    
  }
}  

void update() {
  
  if (accelTimer >= 50) { //make sure the acceleration only randomizes once every second
    Ball_a = new PVector(random(-1,1),random(-1,1));
    Ball_a.normalize();
    Ball_a.mult(0.030 + 0.0008 * score);
    accelTimer = 0;
  } else {
    accelTimer = accelTimer + 1;
  }
  Ball_v.add(Ball_a);
  Ball.add(Ball_v);
  
  
}


void bounce() {
  
  if (Ball.x < radius) {
    Ball_v.x = Ball_v.x * -0.95;
    Ball.x = radius + 1;
  } else if (Ball.x > width - radius) {
    Ball_v.x = Ball_v.x * -0.95;
    Ball.x = 799 - radius;
  }
  
  if (Ball.y < radius) {
    Ball_v.y = Ball_v.y * -0.95;
    Ball.y = radius + 1;
  } else if (Ball.y > height - radius) {
    Ball_v.y = Ball_v.y * -0.95;
    Ball.y = 599 - radius;
  }
  
  
}
