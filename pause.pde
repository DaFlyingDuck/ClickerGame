void pause() {
  
  theme1.pause();
  theme2.pause();
  theme3.pause();
  
  if (dist(mouseX, mouseY, 40, 40) <= 30) {
    stroke(0);
  } else { 
    stroke(255);
  }
  fill(180);
  circle(40, 40, 60);
  stroke(0);
  strokeWeight(3);
  fill(0);
  triangle(32, 32, 32, 48, 50, 40);
  
  
  textSize(60);
  fill(0);
  text("PAUSED", 400, 250); 
  
  //Main menu button
  fill(180);
  strokeWeight(4);
  if (mouseX >= 250 && mouseX <= 550 && mouseY >= 350 && mouseY <= 430) {
    stroke(255, 0, 0);
  } else { 
    stroke(0);
  }
  rect(250, 350, 300, 80);
  textSize(26);
  fill(0);
  text("Return to Main Menu", 400, 390);
  
}

void pauseClicks() {

  if (dist(mouseX, mouseY, 40, 40) < 30) {   //checks if the pause button was clicked
    score = 0;
    lives = 5;
    mode = GAME;
    randomSong();
    
  } else if (mouseX >= 250 && mouseX <= 550 && mouseY >= 350 && mouseY <= 430) {
    
    theme1.pause();
    theme2.pause();
    theme3.pause();
    mode = INTRO;
  
  }
  
}
