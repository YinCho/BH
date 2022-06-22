class Bullet extends GameObject {

  Bullet(float x, float y) {

    super(x, y, 0, -10, 5, #98CE00, 1);
  }

  void act() {

    super.act();
    //GO OFF THE SCREEN
    if (offScreen()) lives = 0;
  }
  void show() {
    fill(c);
    circle(x,y,size);
    
    
    
  }
}
