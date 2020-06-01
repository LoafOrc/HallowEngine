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
  public Shape Type;
  private Transform Object;
  Renderer(Transform _object) {
    Object = _object;
  }
  void draw() {
    rotate(Object.Direction);
    if(Type == Shape.Rectangle)
      rect(Object.Position.x, Object.Position.y, Object.Size.x, Object.Size.y);
  }
}
enum Shape {
  Rectangle
}
