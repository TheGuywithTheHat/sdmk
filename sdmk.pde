
Player player;

void settings() {
  size(480, 640);
  
}

void setup() {
  player = new Player(width / 2, height / 2, 20);
}

void draw() {
  background(255);
  player.update();
  player.draw();
}
