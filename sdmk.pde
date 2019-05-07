
Player player;

void settings() {
  size(640, 480);
  
}

void setup() {
  setupInput();
  
  player = new Player(height / 2, height / 2, 20);
}

void draw() {
  frameRate(60);
  background(255);
  player.update();
  player.draw();
  color(0);
  fill(0);
  rect(height, 0, width, height);
}
