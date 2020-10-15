void gameover() {
  
  theme1.pause();
  theme2.pause();
  theme3.pause();
  gameover.play();
  background(200, 0, 0);
  textSize(80);
  fill(0);
  text("GAME OVER", 400, 200);
  
  
  if (score > highscore) {
    highscore = score;
  }
  score = 0;
  lives = 5;
  
  if (gameoverTime < 251) {
    
    gameoverTime = gameoverTime + 1;
    
  }
  
  if (gameoverTime > 250) {
    
    //retry button
    fill(180);
    if (mouseX >= 300 && mouseX <= 500 && mouseY >= 300 && mouseY <= 400) {
      stroke(255, 0, 0);
    } else {
      stroke(0);
    }
    strokeWeight(4);
    rect(300, 300, 200, 100);
    textSize(32);
    fill(0);
    text("Retry", 400, 350);
    
    
    
    //main menu button
    fill(180);
    if (mouseX >= 300 && mouseX <= 500 && mouseY >= 450 && mouseY <= 550) {
      stroke(255, 0, 0);
    } else { 
      stroke(0);
    }
    strokeWeight(4);
    rect(300, 450, 200, 100);
    textSize(28);
    fill(0);
    text("Main Menu", 400, 500);
  
    
  }
  
}

void gameoverClicks() {
  

  if (gameoverTime > 250) {
    
    if (mouseX >= 300 && mouseX <= 500 && mouseY >= 300 && mouseY <= 400) {
      
      mode = GAME;
      random = random(1, 3);
      theme1.rewind();
      theme2.rewind();
      theme3.rewind();
      randomSong();
      gameoverTime = 0;
    
    } else if (mouseX >= 300 && mouseX <= 500 && mouseY >= 450 && mouseY <= 550) {
      
      mode = INTRO;
      gameoverTime = 0;
    }
  
  }
    
}
