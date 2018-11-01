/* Carolina Manent 
Project 1 
Creative Coding 
The drawing machine of the the past and present */

UserDraw userDraw1; // My class which includes the main frame and functions for user control and computer control
UserDraw userDraw2; // My second frame design 

Timer timer1; // These three timers separate the story into three sections 
Timer timer2; // The notifications start popping up
Timer timer3; // Electronic screens flashing sending us down a spiral 


// Set up function 
void setup(){
  size(800,600);
  background(210); // The Screen
  frameRate(1000); // increased for faster movements
  
  // THE CLASSES
  userDraw1 = new UserDraw(color(219,0,0), color(196,0,0), color(214,176,51), color(0)); // Classic Etch a sketch frame
  userDraw2 = new UserDraw(color(0), color(100), color(0), color(0)); // "Electronic" iSketch Frame 
  
  timer1 = new Timer(10000); // First switch to notifications 
  timer1.start(); // starts counting until it reaches 10000ms then action dictated is preformed
  
  timer2 = new Timer(20000); // Switch to spiral
  timer2.start(); 
  
  timer3 = new Timer(40000); // Switch to nothingness
  timer3.start(); 

}

// Draw Function - the action 
void draw(){ 
  
  userDraw1.display(); // Here the classic etchAsketch is simulated
  userDraw1.userMove(); // user can draw whatever
  userDraw1.mouseDragged(); // and erase with the mouse
  
  if (timer1.isFinished()){ // first time is up (1000ms have passed)
  userDraw2.display(); // old fashioned turns electronic
  userDraw2.battery(); // battery life!
  userDraw2.compMove1(); // now the computer takes over
  userDraw2.font(); // futuristic font...(maybe thats what they thought in the 70s or something)
  }
  
  if (timer2.isFinished()) { // 2000 ms have passed
  userDraw2.display(); // same display
  userDraw2.battery(); // same battery
  userDraw2.compMove2(); // different drawing actino - spiral!
  userDraw2.font(); // futuristic font
  userDraw2.mouseDragged();  } // but you can still erase  - maybe draw a smiley face in the madness
  
  if (timer3.isFinished()) { // 4000 ms have passed 
    end(); } // cut to black
        
}


void end(){ // Cut to black function 
  background(0);
}
