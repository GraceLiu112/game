void gameover(){
  background(255, 0, 0);
  textSize(80);
  text("GAME OVER", 390, 320);
  if(score > highScore){
    highScore = score;
  }
  text("High Score: " + highScore, 390, 440);
  gameover.play();
}

void gameoverClicks(){
  mode = INTRO;
  gameover.pause();
  theme.rewind();
}
