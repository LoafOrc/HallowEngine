class player {
  public Transform T = new Transform();
  public Renderer R = new Renderer(T);
  public Rigidbody RB = new Rigidbody(T);
  void draw() {
    R.draw();
    RB.Gravity();
  }
}
public player Player = new player();
public Vector2 Center;
void settings() {
  size(500,750);
}
void setup() {
  Center = new Vector2(width/2,height/2);
  Player.T.Size = new Vector2(50,50);
}
void draw() {
  
  background(255);
  
  fill(0);
  noStroke();
  Player.draw();
}
