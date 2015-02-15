void setup() {
  size(1000, 1000);
  frameRate(30);
}
var enemies = {
    x: 200,
    y: 0,
};
<script>
var BROWN = color(176, 143, 33);
var waffleX = 400;
var waffleY = 370;
var dX = 0;
var dY = 0;
var x1;
var y1;
var x2;
var y2;
var score = 0;
var level = 0;
var store = false;
var draw = function() {
    if(level === 0){
        background(8, 13, 82);        
        fill(176, 143, 33);
        textSize(40);
        text("Midnight Waffles", 41, 118);
        textSize(20);
        text("Drag the waffles and hit the enemies!\nClick the Waffle to Begin!", 34, 161);
        fill(255, 255, 255);
        //stars
        ellipse(200, 10, 5, 5);
        ellipse(140, 57, 5, 5);
        ellipse(309, 90, 5, 5);
        ellipse(264, 147, 5, 5);
        ellipse(86, 217, 5, 5);
        ellipse(72, 24, 5, 5);
        ellipse(222, 202, 5, 5);
        ellipse(131, 274, 5, 5);
        ellipse(348, 60, 5, 5);
        ellipse(330, 191, 5, 5);
        ellipse(52, 234, 5, 5);
        ellipse(32, 69, 5, 5);
        fill(204, 179, 70);
        //waffle button
        fill(128, 104, 17);
        noFill();
        stroke(133, 113, 12);
        strokeWeight(10);
        arc(200, 300, 70, 70, -180, -106);
        arc(200, 300, 70, 70, -68, 8);
        arc(200, 300, 70, 70, 45, 145);
        fill(184, 154, 57);
        noStroke();
        ellipse(200, 300, 60, 60);
        fill(150, 110, 16);
        if(mouseIsPressed && mouseX > 175 && mouseY > 280 && mouseX < 225 && mouseY < 330){
            level++;
        }
    }
    if(level > 0){
        background(242, 233, 233);
        fill(176, 143, 33);
        ellipse(waffleX, waffleY, 50, 50);
        waffleX += dX;
        waffleY += dY;
        ellipse(enemies.x, enemies.y, 30, 30);
        enemies.y += 4;
        if(enemies.y > 400){
            score = 0;
            enemies.x = random(30, 370);
            enemies.y = 0;
        }
        if(get(enemies.x, enemies.y+31) === BROWN){
            enemies.y = 0;
            enemies.x = random(30, 370);
        } 
        fill(117, 94, 17);
        if(mouseIsPressed){
            waffleX = mouseX;
            waffleY = mouseY;
        }
        mousePressed = function(){
            x1 = mouseX;
            y1 = mouseY;
        };
        mouseReleased = function(){
            x2 = mouseX;
            y2 = mouseY;
            dX = (x2 - x1)/(dist(x1, y1, x2, y2)/10);
            dY = (y2 - y1)/(dist(x1, y1, x2, y2)/10);
        };
        if(waffleY < 0 || waffleX > 400 || waffleY < 0 || waffleX < 0){
            waffleX = 200;
            waffleY = 370;
            dX = 0;
            dY = 0;
        }
        textSize(19);
        text("Score: " + floor(score/60), 10, 20);
        score ++;
        
        //buy button
        fill(222, 168, 60);
        rect(310, 10, 60, 30);
        fill(0, 0, 0);
        text("Store", 318, 31);
        if(mouseIsPressed && mouseX > 300 && mouseY < 70){
            store = true;
        }
        if(store === true){
            //commands to disable enemies and score timer
            background(207, 188, 118);
            textSize(30);
            text("Store", 163, 34);
            fill(222, 168, 60);
            rect(310, 48, 60, 30);
            fill(0, 0, 0);
            textSize(25);
            text("Back", 313, 70);
            if(mouseIsPressed && mouseX > 300 && mouseY < 70 && mouseY > 50){
                store = false;
            }
        }
    }
    
};

void draw() {}
