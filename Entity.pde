

class Entity {
  double x;
  double y;
  double vx;
  double vy;
  double radius;
  
  Entity(double x, double y, double radius) {
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
    
  }
}
