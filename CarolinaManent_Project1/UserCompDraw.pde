class UserDraw {
int ax = key; // sets x & y to constantly change according to the key pressed
int ay = key;

color c;
color d;
color e;
color f;

float r = 0;
float theta = 0;



////////// GAMEPIECE CONSTRUCTOR ////////// 

UserDraw(color tempC, color tempD, color tempE, color tempF) {
  c = tempC; // Frame color 
  d = tempD; // Corner Lines color 
  e = tempE; // Text color
  f = tempF; // Drawing line color 
 }

////////// DISPLAY OF THE GAMEPIECE ////////// 

void display() {
  noStroke();
  fill(c);
  rectMode(CORNERS);
  rect(0, 0, width, height - 525); // top left corner 
  rect(width, 0, width - 75, height - 75); // top right corner 
  rect(width, height, 0, height - 75); // bottom right corner
  rect(0, height, width - 725, 0); // bottom left corner
    
  // Corner Lines for details 
  stroke(d);
  strokeWeight(2);
  line(75,75, 0,0); // top left
  line(width - 75, height - 525, width ,0); // top right
  line(width - 75, height - 75, width ,height); // bottom right 
  line(width - 725, height - 75 , 0, height); // bottom left  
  
  // Etch A Sketch written on Toy - font used as close as possible to original
  PFont myFont;
  myFont = createFont("HanziPenSC-W5", 48);
  textFont(myFont);
  textAlign(CENTER , BOTTOM);
  fill(e);
  text("Etch A Sketch", width/2, 65);
  
  // Knobs
  ellipseMode(CENTER);
  noStroke();
  fill(255);
  ellipse(width - 700, height - 40, 60, 60);
  ellipse(width - 100, height - 40, 60, 60); 
  
  
}

void font(){
    // Etch A Sketch written on Toy - font used as close as possible to original
  PFont myFont;
  myFont = createFont("Krungthep", 48);
  textFont(myFont);
  textAlign(CENTER , BOTTOM);
  fill(255);
  text("iEtch A Sketch", width/2, 65);
}

void battery(){
  fill(0,255,0);
  stroke(210);
  rectMode(CORNERS);
  rect(620, 20, 660, 40);
  fill(210);
  rect(660, 25, 665, 35);
}
  

////////// USER MOVES THE KEYS ////////// 

void userMove() { // This is the interactive drawing aspect - you draw
  if (keyCode == UP){ // keyCode tells Processing we're using special keys
   ay--; } // Loop that sets line drawn according to arrow key pressed
       
   if (keyCode == DOWN){
     ay++; }
         
    if (keyCode == LEFT){
       ax--; }
           
       if (keyCode == RIGHT){
         ax++; } //}     
      
float kx = constrain(ax, width - 725, width - 75);  // Constrains line to toy's scree
float ky = constrain(ay, height - 525, height - 75); 
 // "Normal" EtchASketch
 strokeWeight(1); // Chose a lighter weight to match the real thing
 stroke(f);  
 line(kx, ky, kx, ky);  // Constantly changing with arrow pressed 
}

////////// COMPUTER REACTS FIRST TIME ////////// 

void compMove1(){

noStroke(); 
float notificationX = random(width);
float notificationY = random(height);

fill(255,0,0,random(100,255));
ellipse(notificationX*2,notificationY*2,30,30);

fill(0,0,255,random(100,255));
ellipse(notificationX*4,notificationY*4,20,20); 

}


////////// COMPUTER REACTS SECOND TIME ////////// 

void compMove2() {
float messageX = r * cos(theta);
float messageY= r * sin (theta); 
  
  noStroke();
  fill(random(0,255));
  rectMode(CENTER);
  rect(messageX+width/2,messageY+height/2,random(50,70),random(40,80), 10); 
  // Increment the angle
  theta += 0.01;
  // Increment the radius
  r += 0.1; 
 
  
}

////////// ERASER FUNCTION ////////// 

void mouseDragged() { // Users can erase their artwork by dragging the mouse over it, constrained only to the toy's screen!
  if (mouseButton == LEFT){ 
   fill(210); noStroke(); ellipse(mouseX,mouseY,50,50);  }
}

}
