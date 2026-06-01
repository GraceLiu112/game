

//Grace Liu
//Block 2-2
//May 12, 2026

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float sliderY;
float size = 0;

PImage selectedImage;
PImage orange;
PImage tomato;
PImage kiwi;

// mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//target variables
float x, y, d;
float vx, vy;
int score, lives, highScore;

// sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//color pallete

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = INTRO;
  
  sliderY = 500;
  size = 80;
  
  // target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  highScore = 0;
  lives = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  bump = minim.loadFile("FAILURE.wav");
  coin = minim.loadFile("SUCCESS.wav");
  gameover = minim.loadFile("MUSIC.mp3");
  
  //picture
  orange = loadImage("orange.png");
  tomato = loadImage("tomato.png");
  kiwi = loadImage("kiwi.png");
  selectedImage = orange;
}

void draw(){
  if(mode == INTRO){
    intro();
  }
  else if(mode == OPTIONS){
    options();
  }
  else if(mode == GAME){
    game();
  }
  else if(mode == PAUSE){
    pause();
  }
  else if(mode == GAMEOVER){
    gameover();
  }
  else{
    println("Error: Mode = " + mode);
  }
}

void tactile(int x, int y, int increaseX, int increaseY){
  if (mouseX > x - increaseX / 2 && mouseX < x + increaseX / 2 && mouseY > y - increaseY / 2&& mouseY < y + increaseY / 2) {
    strokeWeight(5);
    stroke(255, 0, 0);
  } else {
    strokeWeight(1);
    stroke(0);
  }

}
