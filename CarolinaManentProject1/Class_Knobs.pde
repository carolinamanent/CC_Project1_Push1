class Knobs {
color c;

Knobs(color tempC) {
  c = tempC;  
 }
 
void display() {
  ellipseMode(CENTER);
  fill(c);
  ellipse(width - 700, height - 40, 60, 60);
  ellipse(width - 100, height - 40, 60, 60); 
}

}
