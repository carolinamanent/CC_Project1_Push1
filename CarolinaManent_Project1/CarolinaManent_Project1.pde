
UserDraw userDraw1;
UserDraw userDraw2;

Timer timer1;
Timer timer2;
Timer timer3;



void setup(){
  size(800,600);
  background(210); // The Screen
  frameRate(5000);
  
  // THE CLASSES
  userDraw1 = new UserDraw(color(219,0,0), color(196,0,0), color(214,176,51), color(0));
  userDraw2 = new UserDraw(color(0), color(100), color(0), color(0));
  
  timer1 = new Timer(10000);
  timer1.start(); 
  
  timer2 = new Timer(20000);
  timer2.start(); 
  
  timer3 = new Timer(40000);
  timer3.start(); 

}

void draw(){ 
  
  userDraw1.display();
  userDraw1.userMove();
  userDraw1.mouseDragged();
  
  if (timer1.isFinished()){
  userDraw2.display();
  userDraw2.battery();
  userDraw2.compMove1();
  userDraw2.font();
  }
  
  if (timer2.isFinished()) {
  userDraw2.display();
  userDraw2.battery();
  userDraw2.compMove2();
  userDraw2.font();
  userDraw2.mouseDragged();  }
  
  if (timer3.isFinished()) {
    end(); }
    

    
}


void end(){
  background(0);
}
