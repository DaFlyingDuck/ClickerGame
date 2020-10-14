//options slider for starting radius
//fix gameover

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PFont comic_sans;

PImage doge;
PImage cat;
PImage crying;
int imgChoice = 1;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

float radius;
int diameter;
PVector Ball;
PVector Ball_v;
PVector Ball_a;

PVector Mouse;

int accelTimer;
int score, lives, highscore;

//Sound variables
Minim minim;
AudioPlayer theme1, theme2, theme3, gameover, clicked, miss;
float random;

void setup() {
  
  size(800, 600);
  frameRate(100);
  textAlign(CENTER, CENTER);
  comic_sans = loadFont("ComicSans.vlw");
  textFont(comic_sans, 32);
  doge = loadImage("doge.jpg");
  cat = loadImage("cat.png");
  crying = loadImage("crying cat.png");
  mode = INTRO;
  radius = 70;
  diameter = round(radius * 2);
  
  //initial position of the ball and random initial velocity
  Ball = new PVector(width/2, height/2);
  Ball_v = new PVector(random(-1,1),random(-1,1));
  Ball_v.normalize();
  Ball_v.mult(2);
  Ball_a = new PVector(0, 0);
  
  //scoring
  score = 0;
  lives = 3;
  highscore = 0;
  
  //initialize minim variables
  minim = new Minim(this);
  theme1 = minim.loadFile("Maple Leaf Rag.mp3");
  theme2 = minim.loadFile("Meatball Parade.mp3");
  theme3 = minim.loadFile("Winner Winner.mp3");
  gameover = minim.loadFile("Gameover.mp3");
  clicked = minim.loadFile("coin.wav");
  miss = minim.loadFile("miss.mp3");
  

  
}


void draw() {
  
  PVector Mouse = new PVector(mouseX, mouseY);
  diameter = round(radius * 2);
  
  if (mode == INTRO) {
    
    intro();
    
    
  } else if (mode == GAME) {
    
    game();
    
  } else if (mode == PAUSE) {
    
    pause();
    
  } else if (mode == GAMEOVER) {
   
    gameover();
    
  } else if (mode == OPTIONS) {
    
    options();
  
  } else {
    
    println("Error: Mode = " + mode);
   
    
  }
  
   
}
