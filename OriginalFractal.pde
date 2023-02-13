


public void setup() {  
  size(400,400);
}

public void draw() {
  pushMatrix();
  translate(200,200);
  rotate(PI/4);
  for (int i = 0; i < 360; i += 90){
    rotate(i);
  }
  popMatrix();
  stroke(21,71,5);
  strokeWeight(10);
  line(200,275,200,400);
}
public void rotate(int rot){
  pushMatrix();
  rotate(radians(rot));
  Pedal(50,0,100);
  popMatrix();
}

public void Pedal(float x, float y, int siz) {
  if (siz <= 10) {
    fill(siz + 100, 0 , 0);
    noStroke();
    ellipse(x, y, siz, siz);
  }
  else {
    fill(siz + 100, 0 , 0);
    noStroke();
    ellipse(x, y, siz, siz);
    Pedal(x - 15, y, siz - 30);
    
}


