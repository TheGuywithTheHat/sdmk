

class Entity {
  float x;
  float y;
  float vx;
  float vy;
  float radius;
  
  Entity(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  boolean collidesWith(Entity other) {
    return false;
  }
  
  void update() {
    x += vx;
    y += vy;
  }
  
  void draw() {
    circle(x, y, radius / 2.0);
  }
}
