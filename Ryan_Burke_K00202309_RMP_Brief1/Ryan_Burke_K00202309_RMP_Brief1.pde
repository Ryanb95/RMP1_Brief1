Face myFace;

//Variable for increment circles will move
int moveCirc = 10;
float red = random(255);
float green = random(255);
float blue = random(255);

//Arrays to store circle info.
float[][] myCircles = new float[20][];
color[] colours = new color[20];

void setup() {
  
  size(800,800);
  background(red, green, blue);
  
//Create object of Face class.
  myFace = new Face();
  
//For loop which creates an array to store circle attributes & adds colours
//That array is then put into the 2d array created above
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
  background(red, green, blue);
  
//paints the instance of the Face class at the mouse position every frame
  myFace.paint(mouseX, mouseY);

//For loop which draws the circles every frame
  for(int i = 0; i < myCircles.length; i++){
    
//Adds colours and draws circles at random points on the screen
    fill(colours[i]);
    ellipse(myCircles[i][0], myCircles[i][1], myCircles[i][2], myCircles[i][2]);

//If statements which allows the circles to move when arrows are pressed
//The different index numbers refer to the x and y values of the circles
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
    
    green = mouseX;
    blue = mouseY;
  }
}