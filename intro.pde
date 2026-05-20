void intro(){
  background(188, 224, 255);
  fill(255, 204, 126);
  rect(390, 600, 220, 100);
  textSize(50);
  fill(0);
  text("Start", 390, 600);
  textSize(80);
  text("CLICKER GAME", 390, 350);
}

void introClicks(){
  if(mouseX > 390 && mouseX < 610 && mouseY > 600 && mouseY < 700){
    mode = GAME;
  }
}
