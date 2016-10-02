int circles = 20;

int[] size = new int[circles];
int[] x = new int[circles];
int[] y = new int[circles];
color[] colours = new color[circles];

void setup() {
  size(800,800);
  background(123);
  
  for(int i = 0; i < circles; i++){
    x[i] = int(random(width));
    y[i] = int(random(height));
    size[i] = int(random(10, 50));
    colours[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  background(123);
  
  for(int i = 0; i < circles; i++){
    fill(colours[i]);
    ellipse(x[i], y[i], size[i], size[i]);
  }
}