
UserDraw userDraw1;
UserDraw userDraw2;

Timer timer;

void setup(){
  size(800,600);
  background(210); // The Screen  
  
  // THE CLASSES
  userDraw1 = new UserDraw(color(219,0,0), color(196,0,0), color(214,176,51), color(0));
  userDraw2 = new UserDraw(color(51,255,255), color(100,255,255), color(51,255,255), color(0));
  
  timer = new Timer(10000);
  timer.start(); 

}

void draw(){ 
  
  userDraw1.display();
  userDraw1.userMove();
  userDraw1.mouseDragged();
  
  if (timer.isFinished()) {
  userDraw2.display();
  userDraw2.compMove();
  userDraw2.font();
  userDraw2.mouseDragged();  }

    
}
