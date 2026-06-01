void gameover(){
  background(255, 0, 0);
  textSize(80);
  text("GAME OVER", 390, 320);
  text("High Score: " + score, 390, 440);
  theme.pause();
  gameover.play();
}

void gameoverClicks(){
  mode = INTRO;
  theme.rewind();
}
