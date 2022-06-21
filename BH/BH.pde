
//Jerry You
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
int mode;
PImage ship1, ship2, intro, enemyShip;
boolean up, down, left, right, space;
int shipLives, bossspawn;
final int SINGLE = 11;
final int DOUBLE = 12;
final int TRIPLE = 13;
final int QUADRUPLE = 14;
final int PENTUPLE = 15;
int gunMode;
float explosionSize;
ArrayList<GameObject> objects;
Starfighter player1;

void setup() {
  fullScreen();
  mode = INTRO;
  ship1 = loadImage("ship1.png");
  ship2 = loadImage("ship2.png");
  intro = loadImage("INTROS.png");
  shipLives = 3;
  objects = new ArrayList<GameObject>();
  explosionSize = 0.5;
  player1 = new Starfighter();
  objects.add(player1);
  gunMode = 11;
  enemyShip = loadImage("enemyship.png");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  }
  
}
