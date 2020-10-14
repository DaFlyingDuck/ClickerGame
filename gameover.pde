void gameover() {
  
  theme1.pause();
  theme2.pause();
  theme3.pause();
  gameover.play();
  background(200, 0, 0);
  textSize(80);
  fill(0);
  text("GAME OVER", 400, 300);
  
  
  if (score > highscore) {
    highscore = score;
  }
  score = 0;
  lives = 3;
  
}

void gameoverClicks() {
  

 
  //switch back to intro screen
  mode = INTRO;
  
}
