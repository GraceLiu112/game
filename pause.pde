void pause(){
  theme.pause();
  fill(0);
  text("PAUSE", 390, 350);
}

void pauseClicks(){
    if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = GAME;
  }
}
