int x = key; // sets x & y to constantly change according to the key pressed
int y = key;

void setup(){
  size(800,600);  
  background(210);

  frame();
  knobs();
  
}


void draw(){
  
  keyPressed(); // Draws according to the keys pressed 
    

}


void frame(){  
  // Creating the Etch a Sketch Frame
  rectMode(CORNERS);
  
  // Border of toy
  noStroke();
  fill(219,0,0);
  rect(0, 0, width, height - 525); // top left corner 
  rect(width, 0, width - 75, height - 75); // top right corner 
  rect(width, height, 0, height - 75); // bottom right corner
  rect(0, height, width - 725, 0); // bottom left corner
  
  // Corner Lines for details 
  stroke(196,0,0);
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
  fill(214,176,51);
  text("Etch A Sketch", width/2, 65);


}

void knobs() {  
  
  // Knobs 
  ellipseMode(CENTER);
  fill(255);
  ellipse(width - 700, height - 40, 60, 60);
  ellipse(width - 100, height - 40, 60, 60); 
}


void keyPressed() {

  if (key == CODED) { // Lets processing know we want to use special keys 
    
     if (keyCode == UP){
       y--; } // Loop that sets line drawn according to arrow key pressed
       
       if (keyCode == DOWN){
         y++; }
         
         if (keyCode == LEFT){
           x--; }
           
           if (keyCode == RIGHT){
             x++; } }     
  
 
 float kx = constrain(x, width - 725, width - 75);  // Constrains line to toy's screen
 float ky = constrain(y, height - 525, height - 75);


  strokeWeight(.5); // Chose a lighter weight to match the real thing
  stroke(0); 
  line(kx, ky, kx , ky);  // Constantly changing with arrow pressed 
    
}


  
 
