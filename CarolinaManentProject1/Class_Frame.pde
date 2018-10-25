class Frame {
color c;
color d;
color e;
color f;

Frame(color tempC, color tempD, color tempE, color tempF) {
  c = tempC; // Frame color 
  d = tempD; // Corner Lines color 
  e = tempE; // Text color
  f = tempF; // Drawing line color 
 }
 
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
}

void update() {
  
  if (keyCode == UP){ // keyCode tells Processing we're using special keys
   y--; } // Loop that sets line drawn according to arrow key pressed
       
   if (keyCode == DOWN){
     y++; }
         
    if (keyCode == LEFT){
       x--; }
           
       if (keyCode == RIGHT){
         x++; } //}     
  
 float kx = constrain(x, width - 725, width - 75);  // Constrains line to toy's screen
 float ky = constrain(y, height - 525, height - 75);

 strokeWeight(1); // Chose a lighter weight to match the real thing
 stroke(f); 
 line(kx, ky, kx , ky);  // Constantly changing with arrow pressed 
 }

}
