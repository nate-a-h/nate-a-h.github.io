int lasttime = 0;
int delta = 0;
ArrayList<Point> Points = new ArrayList<Point>();

void setup(){
	size(500,500);
	background(100);
	stroke(255);
  
  Point pt = new Point(100,100);
  Points.add(pt);
}


void draw(){
  delta = millis() - lasttime;
  for (Point p : Points)
  {
    p.update(delta);
    p.display();
  }
  
  lasttime = millis();
}

class Point{
  float x,y, oldX, oldY, accX, accY;
  
  Point(float xPos, float yPos){
    x = xPos;
    y = yPos;
  }
  
  void update(float dt)
  {
    
  }
  
  void display()
  {
    point(x, y);
  }
  
}
