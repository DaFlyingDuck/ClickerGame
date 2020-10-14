void pause() {
  
  theme1.pause();
  theme2.pause();
  theme3.pause();
  
  if (dist(mouseX, mouseY, 40, 40) <= 30) {
    stroke(255);
  } else { 
    stroke(0);
  }
  fill(180);
  circle(40, 40, 60);
  textSize(60);
  fill(255);
  text("PAUSED", 400, 300);  
  
  
}

void pauseClicks() {

  if (dist(mouseX, mouseY, 40, 40) < 30) {   //checks if the pause button was clicked
    mode = GAME;
    randomSong();
    
  }
  
}
