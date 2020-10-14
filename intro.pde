void intro() {
  
  
  
  background(0, 255, 0);
  
  //Game Title
  fill(0);
  textSize(80);
  text("Smack the Pet", 400, 250);

  //Start button
  fill(255);
  strokeWeight(4);
  if (mouseX >= 100 && mouseX <= 300 && mouseY >= 350 && mouseY <= 450) {
    stroke(255, 0, 0);
  } else stroke(0);
  rect(100, 350, 200, 100);
  fill(0);
  textSize(45);
  text("Start", 200, 400);
  
  //Options button
  fill(255);
  if (mouseX >= 500 && mouseX <= 700 && mouseY >= 350 && mouseY <= 450) {
    stroke(255, 0, 0);
  } else stroke(0);
  rect(500, 350, 200, 100);
  fill(0);
  textSize(45);
  text("Options", 600, 400);
  
  //highscore number
  textSize(35);
  fill(255);
  text("Highscore: " + highscore, 125, 565);
  
  //Quit button
  fill(255);
  strokeWeight(4);
  if (mouseX >= 650 && mouseX <= 750 && mouseY >= 525 && mouseY <= 575) {
    stroke(255, 0, 0);
  } else stroke(0);
  rect(650, 525, 100, 50);
  fill(0);
  textSize(30);
  text("QUIT", 700, 550);
  
  
}


void introClicks() {
  
  if (mouseX >= 100 && mouseX <= 300 && mouseY >= 350 && mouseY <= 450) { // if clicked the start button  
  
    mode = GAME;
    random = random(1, 3);
    theme1.rewind();
    theme2.rewind();
    theme3.rewind();
    randomSong();
    
  } else if (mouseX >= 500 && mouseX <= 700 && mouseY >= 350 && mouseY <= 450) {
    
    mode = OPTIONS;
    
  } else if (mouseX >= 650 && mouseX <= 750 && mouseY >= 525 && mouseY <= 575) {
    
    exit();
    
  }
  
}
