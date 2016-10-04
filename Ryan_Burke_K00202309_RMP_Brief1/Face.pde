class Face{
  
  void paint(){
    paint(0,0);
  }
  
  void paint(int xPos,int yPos){
    
    pushMatrix();
    
    translate(xPos, yPos);
    
    fill(255, 252, 158);
    rect(0, 0, 100, 150);
    
    fill(255);
    ellipse(25, 20, 20, 20);
    ellipse(75, 20, 20, 20);
    
    fill(0);
    ellipse(25, 20, 5, 5);
    ellipse(75, 20, 5, 5);
    
    popMatrix();
  }
}