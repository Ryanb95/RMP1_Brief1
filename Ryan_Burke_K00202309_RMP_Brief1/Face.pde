class Face{
  
  void paint(){
    paint(0,0);
  }
  
  void paint(int xPos,int yPos){
    
//Saves position of the current coordinate system onto the matrix
    pushMatrix();

//Moves the coordinate system by the specified xPos and yPos
    translate(xPos, yPos);
    
//Sets a fill colour and draws a rectangle(main face)
    fill(255, 252, 158);
    rect(0, 0, 100, 150);

//Sets the fill colours and draws ellipses and a triangle
//This makes up the eyes, nose and mouth
    fill(255);
    ellipse(25, 20, 20, 20);
    ellipse(75, 20, 20, 20);
    
    fill(0);
    ellipse(25, 20, 5, 5);
    ellipse(75, 20, 5, 5);
    
    fill(255, 255, 180);
    triangle(50, 35, 30, 85, 70, 85);
    
    fill(0);
    ellipse(50, 120, 35, 35);

//Restores the old coordinate system
    popMatrix();
  }
}