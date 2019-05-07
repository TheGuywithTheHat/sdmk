
Player player;
int roomWidth = 400;
int roomHeight = 480;

void settings() {
  size(640, 480);
}

void setup() {
  frameRate(60);
  setupInput();
  
  player = new Player(height / 2, height / 2, 8);
}

void draw() {
  background(255);
  player.update();
  player.draw();
  player.drawCD();  // Debug, remove later
  color(0);
  fill(0);
  rect(roomWidth, 0, width, height);
}
