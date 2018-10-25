int x = key; // sets x & y to constantly change according to the key pressed
int y = key;

int option = 1; // starts counter at 1 - easier for keeping the slide numbers the same as their frame/knob number

Frame frame1; // The Classic EtchASketch
Knobs knob1;

Frame frame2; // Pastel EtchASketch
Knobs knob2;


void setup(){
  size(800,600);  
  background(210);
  
  frame1 = new Frame(color(219,0,0), color(196,0,0), color(214,176,51), color(0)); 
  knob1 = new Knobs(color(255));
  
  frame2 = new Frame(color(255), color(160,254,254), color(255,187,255), color(255,119,166));
  knob2 = new Knobs(color(182,255,188));
}


void draw(){

if (option == 1) {
  frame1.display();
  frame1.update();
  knob1.display();  }
  
  if (option == 2) {
  frame2.display();
  frame2.update();
  knob2.display();  }
  
}

void mousePressed() {
  option++;
  if (option > 3) {
    option = 1;
  }
}
