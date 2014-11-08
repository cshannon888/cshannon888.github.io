void setup() {
  size(400, 400);
  frameRate(30);
}

void draw() {}

var draw = function() {
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(random(0,width),random(0,height),10,10);
}
