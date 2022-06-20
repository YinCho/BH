

void intro() {
  background(intro);
  textSize(100);
  fill(#9984D4);
  text("BULLET HELL", 100, 200);
  textSize(10);
}

void introClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    mode = GAME;
  }
}
