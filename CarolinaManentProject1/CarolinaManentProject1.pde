int x = key; // sets x & y to constantly change according to the key pressed
int y = key;

int option = 1;

Frame frame1;
Knobs knob1;

Frame frame2;


void setup(){
  size(800,600);  
  background(210);
  
  frame1 = new Frame(color(219,0,0), color(196,0,0), color(214,176,51), color(0));
  knob1 = new Knobs(color(255));
  
  frame2 = new Frame(color(0), color(100), color(255,0,254), color(random(255),random(255),random(255)));
}


void draw(){

if (option == 1) {
  frame1.display();
  frame1.update();
  knob1.display();  }
  
  if (option == 2) {
  frame2.display();
  frame2.update();
  knob1.display();  }
  
}

void mousePressed() {
  option++;
  if (option > 3) {
    option = 1;
  }
}
