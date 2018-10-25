class Knobs {
color c;

Knobs(color tempC) {
  c = tempC;  // knob color 
 }
 
void display() {
  ellipseMode(CENTER);
  noStroke();
  fill(c);
  ellipse(width - 700, height - 40, 60, 60);
  ellipse(width - 100, height - 40, 60, 60); 
}

}
