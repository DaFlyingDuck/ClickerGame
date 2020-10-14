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
  
  doge.resize(diameter, diameter);
  cat.resize(diameter, diameter);
  crying.resize(diameter, diameter);
  
  if (imgChoice == 1) {
    image(doge, Ball.x - radius, Ball.y - radius);
  } else if (imgChoice == 2) {
    image(cat, Ball.x - radius, Ball.y - radius);
  } else {
    image(crying, Ball.x - radius, Ball.y - radius);
  }
  
}
