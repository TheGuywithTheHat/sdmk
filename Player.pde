
class Player extends Entity {
  float moveSpeed = 3;
  float slowFactor = 0.3;
  float shootCooldown = 0;
  float shootTimer = 0;
  
  Player(float x, float y, float radius) {
    super(x, y, radius);
  }
  
  void update() {
    
    if(shootTimer > 0) {
      shootTimer--;
    }
    
    vx = 0;
    vy = 0;
    
    float moveAmount = moveSpeed;
    
    // Slow movement
    if(getKey(controls.slow)) {
      moveAmount *= slowFactor;
    }
    
    // Arrow key movement
    if(getKey(controls.up)) {
      vy -= moveAmount;
    }
    if(getKey(controls.down)) {
      vy += moveAmount;
    }
    if(getKey(controls.left)) {
      vx -= moveAmount;
    }
    if(getKey(controls.right)) {
      vx += moveAmount;
    }
    super.update();
    
    // Shooting
    if(getKey(controls.shoot)) {
      if(shootTimer <= 0) {
        shootTimer = shootCooldown;
        // Create the actual bullet
      }
    }
    
    // Bombs go here
    // riiiiight...
    // ...here.
  }
}
