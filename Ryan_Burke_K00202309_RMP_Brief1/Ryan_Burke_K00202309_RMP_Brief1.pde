int moveCirc = 10;

float[][] myCircles = new float[20][];
color[] colours = new color[20];

void setup() {
  
  size(800,800);
  background(123);
  
  for(int r = 0; r < myCircles.length; r++){
    float[] randomCircles = new float[3];
    
    randomCircles[0] = random(width);
    randomCircles[1] = random(height);
    randomCircles[2] = random(10, 50);
    
    colours[r] = color(random(255), random(255), random(255));
    myCircles[r] = randomCircles;
  } 
}

void draw() {
  background(123);
  
  for(int i = 0; i < myCircles.length; i++){
    fill(colours[i]);
    ellipse(myCircles[i][0], myCircles[i][1], myCircles[i][2], myCircles[i][2]);
    
      if(keyCode == LEFT && keyPressed == true){
        myCircles[i][0] -= moveCirc;
      }
      
      if(keyCode == RIGHT && keyPressed == true){
        myCircles[i][0] += moveCirc;
      }
      
      if(keyCode == UP && keyPressed == true){
        myCircles[i][1] -= moveCirc;
      }
      
      if(keyCode == DOWN && keyPressed == true){
        myCircles[i][1] += moveCirc;
      }
    }
  }