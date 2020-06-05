//Position Data
public class Transform {
  Vector2 Position = new Vector2();
  Vector2 Size = new Vector2();
  float Direction;
}
public class Vector2 {
  float x,y;
  Vector2(){}
  Vector2(float _x, float _y) {
    x = _x;
    y = _y;
  }
}
//Rendenering
public class Renderer {
  public Shape Type = Shape.Rectangle;
  public boolean AlwaysDraw = false;
  private Transform Object;
  Renderer(Transform _object) {
    Object = _object;
  }
  void draw() {
    
    if(!AlwaysDraw) {
    //Check to see if the object is within the window. If not don't draw beacuse we won't see it
    if(Object.Position.x <= -Object.Size.x)
      return;
    if(Object.Position.x >= width)
      return;
    if(Object.Position.y <= -Object.Size.y)
      return;
    if(Object.Position.y >= height)
      return;
    }
    
    rotate(Object.Direction);
    if(Type == Shape.Rectangle) {
      //Render Rectangle / Square
      rect(Object.Position.x, Object.Position.y, Object.Size.x, Object.Size.y);
    }
    if(Type == Shape.Ellipse) {
      //Render Ellipse / Circle
      ellipse(Object.Position.x, Object.Position.y, Object.Size.x, Object.Size.y);
    }
  }
}
enum Shape {
  Rectangle,
  Ellipse
}
//Physics
public class Rigidbody {
}
