PVector Position;
float speed = 7;
boolean isFired = false;
PVector Mouse = new PVector(mouseX,mouseY);
PVector Direction = new PVector(0,0);
PVector accel = new PVector(0,0);
PVector Gravity = new PVector(0, 2);
void setup()
{
  size(800,800);
  Position = new PVector(200,600);
}

void draw()
{
  ellipse(Position.x, Position.y, 20,20);
  
  
  if(isFired)
  {
  
    
    
    
    Position.add(Direction);
  }
  
}



void mouseReleased()
{
  isFired = true;
  Mouse = new PVector(mouseX,mouseY);
  
  Direction = new PVector(Mouse.x - Position.x,Mouse.y - Position.y);
  Direction.normalize();
    Direction.mult(speed);
    
}