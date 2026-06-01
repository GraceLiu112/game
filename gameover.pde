void gameover(){
  background(255, 0, 0);
  textSize(80);
  text("GAME OVER", 390, 350);
  theme.pause();
  gameover.play();
}

void gameoverClicks(){
  mode = INTRO;
  theme.rewind();
}
