int circles = 20;

int[] x = new int[circles];
int[] y = new int[circles];

void setup() {
  size(800,800);
  background(123);
  
  for(int i = 0; i < circles; i++){
    x[i] = int(random(width));
    y[i] = int(random(height));
  }
}

void draw() {
  background(123);
  
  for(int i = 0; i < circles; i++){
    fill(random(255), random(255), random(255));
    ellipse(x[i], y[i], 50, 50);
  }
}