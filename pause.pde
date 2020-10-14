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
  text("PAUSED", 400, 300);  
  
  
}

void pauseClicks() {

  if (dist(mouseX, mouseY, 40, 40) < 30) {   //checks if the pause button was clicked
    mode = GAME;
    randomSong();
    
  }
  
}
