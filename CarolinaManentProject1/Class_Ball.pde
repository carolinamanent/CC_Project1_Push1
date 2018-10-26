class Ball {

  float r;   // radius
  float x, y; // location
  float xspeed, yspeed; // speed  

  // Constructor
  Ball(float tempR) {
    r = tempR;
    x = random(width - 725, width - 75);
    y = random(height - 525, height - 75);
    xspeed = random( - 5, 5);
    yspeed = random( - 5, 5);
    
  }

// This is for when the ball is moved by me
void moveAlone() {    
    x += xspeed; // Increment x - ball moves around
    y += yspeed; // Increment y - ball moves around
    
    //// Check horizontal edges
    if (x > width - 75 || x < width - 725) { // ball constrained to frame
      xspeed *= -1;  }
      
    //////Check vertical edges
    if (y > height - 75 || y < height - 525) { // ball constrained to frame 
      yspeed *= -1;  }
}

// You control the pattern
void youMove(){
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

 fill(random(255), random(255), random(255), 50); // rainbow !!!
 ellipse(kx, ky, 20, 20); 
 }
 
// Draw the ball - used when the ball is being moved by me
  void display() {     
    noStroke();
    fill(random(255), random(255), random(255), 50); // rainbow!!
    ellipse(x, y, r*2, r*2); // ball x y & size
}

 
}
