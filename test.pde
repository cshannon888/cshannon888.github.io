void setup() {
  size(400, 400);
  frameRate(30);
}

void draw() {}
var destroy = 10;
var circleX = 80;
var circleY = 0;
var angle = 1;
var speed = 1;
var circleSize = [0];
var randomColor = [color(random(0, 255), random(0, 255), random(0, 255))];
var draw = function() {
    pushMatrix();
    translate(200, 200);
    rotate(angle);
    angle +=1;
    background(255, 255, 255);
    textAlign(CENTER, CENTER);
    textSize(21);
    for(var i = 0; i < circleSize.length; i++){
        fill(randomColor[i]);
        ellipse(circleX, circleY, circleSize[i], circleSize[i]);
        circleSize[i] += speed;
    }
    if(round(circleSize[i-1]) % 100 === 0){
        randomColor.push(color(random(0, 255), random(0, 255), random(0, 255)));
        fill(randomColor[i]);
        circleSize.push(0);
        ellipse(circleX, circleY, circleSize[i], circleSize[i]);
    }
    
    popMatrix();
    
    /**fill(0, 0, 0);
    text("This is how much Chris will destroy Kenny", 200, 105);
    text("in Pokemon, out of 10:", 200, 129);
    textSize(35);
    text(destroy, 200, 182);
    destroy ++;*/
    noStroke();
    
    if(mouseIsPressed){
        circleX = mouseX-200;
        circleY = mouseY-200;
    }
    
    if(keyIsPressed){
        speed = -speed;
    }
};
