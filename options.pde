void options() {
  
  background(255);
  
  // Target
  doge.resize(200, 200);
  cat.resize(200, 200);
  crying.resize(200, 200);
  image(doge, 300, 75);
  image(cat, 50, 75);
  image(crying, 550, 75);
  
  //highlighting the images
  stroke(0);
  strokeWeight(5);
  noFill();
  if (dist(mouseX, mouseY, 400, 175) <= 100) {
    circle(400, 175, 200);
  } else if (dist(mouseX, mouseY, 150, 175) <= 100) {
    circle(150, 175, 200);
  } else if (dist(mouseX, mouseY, 650, 175) <= 100) {
    circle(650, 175, 200);
  }
  
  
  //border and bottom
  fill(255);
  noStroke();
  rect(0, 300, 800, 300);
  stroke(0);
  strokeWeight(8);
  line(0, 300, 800, 300);
  
  //Indicator 
  if (imgChoice == 1) {
    image(doge, 50, 325);
  } else if (imgChoice == 2) {
    image(cat, 50, 325);
  } else {
    image(crying, 50, 325);
  }
  
  // Apply button
  fill(255);
  strokeWeight(3);
  if (mouseX  >= 650 && mouseX <= 750 && mouseY >= 525 && mouseY <= 575) {
    stroke (255, 0, 0);
  } else {
    stroke(0);
  }
  rect(650, 525, 100, 50);
  fill(0);
  text("Apply", 700, 550);
  
}


void optionsClicks() {
  
  PVector Mouse = new PVector(mouseX, mouseY);
  //select the target
  if (dist(mouseX, mouseY, 400, 175) <= 100) {
    
    imgChoice = 1;
    
  } else if (dist(mouseX, mouseY, 150, 175) <= 100) {
    
    imgChoice = 2;
    
  } else if (dist(mouseX, mouseY, 650, 175) <= 100) {
    
    imgChoice = 3;
    
  } else if (mouseX > 650 && mouseX < 750 && mouseY > 525 && mouseY < 575) {
  
    mode = INTRO;
    
  }
  
}
