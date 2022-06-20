class Bullet extends GameObject {

  Bullet(float x, float y) {

    super(x, y, 0, -10, 5, #81C3D7, 1);
  }

  void act() {

    super.act();
    //GO OFF THE SCREEN
    if (offScreen()) lives = 0;
  }
}
