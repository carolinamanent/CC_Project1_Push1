int option = 1; // starts counter at 1 - easier for keeping the slide numbers the same as their frame/knob number

Frame frame1; // The Classic EtchASketch
Knobs knob1;

void setup(){
  size(800,600);  
  background(210);
  
  frame1 = new Frame(color(219,0,0), color(196,0,0), color(214,176,51), color(0)); 
  knob1 = new Knobs(color(255));
  
}

void draw(){

if (option == 1) {
  frame1.display();
  frame1.youMove(); 
  frame1.mouseDragged(); }
       
}

void keyPressed() { // When the user presses B the picture changes 
  if (key == 'b' || key == 'B'){
  option++;
  if (option > 3) {
    option = 1;
  }
 }
}
