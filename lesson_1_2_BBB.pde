// рисуем буквой B 
// когда мышка нажата, меняем цвет буквы на случайный серый

void setup() { 
  
  size(640, 640);
  frameRate(25); 
  background(0);
}

void draw() { 
  
  if (mousePressed == true) {
    fill( random(0, 255) );
  } else {
    fill(255);
  }
  text("B", mouseX, mouseY);

} 
