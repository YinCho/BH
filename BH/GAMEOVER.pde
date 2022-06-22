void gameover() {
  background(gameover);
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    setup();
  }
}
