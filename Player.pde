
class Player extends Entity {
  float moveSpeed = 0.8;
  
  Player(float x, float y, float radius) {
    super(x, y, radius);
  }
  
  void update() {
    vx = 0;
    vy = 0;
    if(getKey(controls.up)) {
      y -= moveSpeed;
    }
    if(getKey(controls.down)) {
      y += moveSpeed;
    }
    if(getKey(controls.left)) {
      x -= moveSpeed;
    }
    if(getKey(controls.right)) {
      x += moveSpeed;
    }
    super.update();
  }
}
