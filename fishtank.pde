//My code is supposed to represent a fish tank! I implemented bubbles and castles to really bring
//out the portrayal of a fish tank/aquarium. I have one huge fish that is swimming through the 
//tank. It loops to show what fish usually do- kind of swim in the same kind of patterns 
//throughout the day.

//

//FISH TANK 0<

int x = 0;
color[] myOtherArray;
void setup(){
  size(900,900);
  
 myOtherArray = new color []
 {color(0,59,100,170), //DARK BLUE       0
 color(26,122,65,80), //TEAL             1
 color(101,62,33,200),//DARK BROWN       2
 color(0,60,150,150), //BLUE             3
 color(180,150,0,255),//ORANGE           4
 color(255,250,220,130),//BUBBLE COLOR   5
 color(101,97,33,250) //BROWN            6

 };
}


void draw(){
 background(myOtherArray [3]);
 

// CASTLE
        //ceiling
        strokeWeight(4);
        fill(myOtherArray[2]);
        rect(50, 600, 50, 100);
        rect(200, 600, 50, 100);
        fill(myOtherArray[6]);
        rect(40, 580, 70, 20);
        rect(190, 580, 70, 20);
        
        fill(myOtherArray[2]); // Building
        rect(50, 700, 200, 200);
        
        fill(myOtherArray[0]); // Door
        rect(130, 800, 50, 100);
  
// FISH
        size(900,900);
        
        //head and body
        fill(myOtherArray[4]);
        strokeWeight(6);
        ellipse(x+250,750, 200,100);
        ellipse(x+550,750, 400, 200);
        
        //fins and tail
        strokeWeight(5);
        triangle(x+500,750,x+600,720,x+600,775);
        triangle(x+755,750,x+800,700,x+800,775);

        
        //eyes
        
        fill(0);
        point(x+200,750);
  
          
//BUBBLES
     strokeWeight(0);
fill(myOtherArray[5]);
ellipse(560, 400, 80, 80);
ellipse(530, 500, 40, 40);
ellipse(500, 560, 20, 20);  
  
  //moves fish to the left
    x-=2;
  
  //loops the fish 
  if (x+750<0) {
    x=width;
  }
}
