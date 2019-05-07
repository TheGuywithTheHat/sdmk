

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
    if(sqrt(sq(x - other.x) + sq(y - other.y)) < radius + other.radius) {
      return true;
    }
    return false;
  }
  
  void update() {
    x += vx;
    y += vy;
  }
  
  void draw() {
    circle(x, y, radius * 2.0);
  }
  void drawDebug() {
    circle(x, y, radius * 2.0);
  }
}
