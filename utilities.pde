void randomSong() {
  if (random < 1.6) {
    theme1.play();
  } else if (random < 2.4) {
    theme2.play();
  } else {
    theme3.play();
  }
}


void targetChoice() {
  
  if (imgChoice == 1) {
    image(doge, Ball.x - diameter/2, Ball.y - diameter/2, diameter, diameter);
  } else if (imgChoice == 2) {
    image(cat, Ball.x - diameter/2, Ball.y - diameter/2, diameter, diameter);
  } else {
    image(crying, Ball.x - diameter/2, Ball.y - diameter/2, diameter, diameter);
  }
  
}
