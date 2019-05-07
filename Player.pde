
class Player extends Entity {
  float moveSpeed = 3;
  float slowFactor = 0.3;
  
  Player(float x, float y, float radius) {
    super(x, y, radius);
  }
  
  void update() {
    vx = 0;
    vy = 0;
    
    float moveAmount = moveSpeed;
    
    if(getKey(controls.slow)) {
      moveAmount *= slowFactor;
    }
    
    if(getKey(controls.up)) {
      y -= moveAmount;
    }
    if(getKey(controls.down)) {
      y += moveAmount;
    }
    if(getKey(controls.left)) {
      x -= moveAmount;
    }
    if(getKey(controls.right)) {
      x += moveAmount;
    }
    super.update();
  }
}
