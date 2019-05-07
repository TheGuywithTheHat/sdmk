import java.awt.event.KeyEvent;

boolean isInDebug;
private boolean[] keys;

Controls controls = new Controls();

class Controls {
  int up = KeyEvent.VK_UP;
  int down = KeyEvent.VK_DOWN;
  int left = KeyEvent.VK_LEFT;
  int right = KeyEvent.VK_RIGHT;
  int slow = KeyEvent.VK_SHIFT;
  int shoot = KeyEvent.VK_Z;
  int bomb = KeyEvent.VK_X;
}

void setupInput() {
  isInDebug = false;
  keys = new boolean[526];
}

boolean getKey(int k) {
  if(k < keys.length) {
    return keys[k];
  }
  return false;
}

void setKey(int k, boolean value) {
  if(k < keys.length) {
    keys[k] = value;
  }
}

void keyPressed() {
  setKey(keyCode, true);
  
  switch(keyCode) {
    case KeyEvent.VK_F3:
      isInDebug = !isInDebug;
      if(isInDebug) {
        noLoop();
      } else {
        loop();
      }
      break;
    case KeyEvent.VK_F4:
      if(isInDebug) {
        draw();
      }
      break;
    default:
      break;
  }
}

void keyReleased() {
  setKey(keyCode, false);
}

void mousePressed() {
  if(mouseButton == LEFT) {
    
  }
}
