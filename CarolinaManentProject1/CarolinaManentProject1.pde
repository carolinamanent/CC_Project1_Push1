int option = 1; // starts counter at 1 - easier for keeping the slide numbers the same as their frame/knob number

Frame frame1; // The Classic EtchASketch
Knobs knob1;

Frame frame2; // Pastel EtchASketch
Knobs knob2;

Frame frame3; // Neon EtchASketch
Knobs knob3;

Ball ball1; 

void setup(){
  size(800,600);  
  background(210);
  
  frame1 = new Frame(color(219,0,0), color(196,0,0), color(214,176,51), color(0)); 
  knob1 = new Knobs(color(255));
  
  frame2 = new Frame(color(214,197,244), color(255,210,218), color(253,255,182), color(255));
  knob2 = new Knobs(color(202,241,188));
  
  frame3 = new Frame(color(0), color(41,122,255), color(200,250,22), color(245,131,247));
  knob3 = new Knobs(color(255,242,46));
  
  ball1 = new Ball(20);
 
}


void draw(){

if (option == 1) {
  frame1.display();
  frame1.youMove();
  frame1.mouseDragged();
  knob1.display();  }
  
  if (option == 2) {
  frame2.display();
  frame2.mouseDragged();
  knob2.display();
  ball1.youMove();}
    
  if (option == 3) {
  frame3.display();
  frame3.youMove();
  frame3.mouseDragged();
  ball1.moveAlone();
  ball1.display();
  knob3.display();  }
  
}

void keyPressed() { // When the user presses B the frame changes 
  if (key == 'b' || key == 'B'){
  option++;
  if (option > 3) {
    option = 1;
  }
 }
}
