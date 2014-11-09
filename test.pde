void setup() {
  size(800, 800);
  frameRate(30);
}

void draw() {}

var draw = function() {
  var ellipseX = 0;
var speed = -3;
var angle = 0;
var circleColor = color(135, 199, 181);
var draw = function() {
    translate(200, 200);
    rotate(angle);
    background(199, 183, 183);
    fill(circleColor);
    ellipse(22, 172, ellipseX, 200);
    ellipseX += speed;
    if(abs(ellipseX) > 200){
        speed = -speed;
    }
    if(ellipseX > 0){
        circleColor = color(217, 39, 39);
    }
    if(ellipseX < 0){
        circleColor = color(135, 199, 181);
    }
    angle+= 2;
};

}
