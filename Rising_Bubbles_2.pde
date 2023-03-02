//Global Variables //<>// //<>// //<>//
int nBubbles = 100;
int startI;
int endI;
//Bubble[] aBub; //this should only create a memory address
ArrayList <Bubble> aBub = new ArrayList <Bubble> () ;
//WHERE DO WE DEFINE THIS DECLARATION setup!!!!!


void setup() {
  size(500, 700); //width and height are defined
  //aBub = new Bubble[nBubbles]; //array of bubbles of length nBubbles

  //we just have a class bubble we have not instantiated it
  //what data structure to create a Bubble at each spot in the Array
  //HOW DO YOU CREATE A SINGLE BUBBLE

  //do the same thing 100 times USE A FOR LOOP!!!!!!
  for (int i = 0; i < nBubbles; i++) {
    Bubble myBubble = new Bubble();
    //We have to put myBubble into the Array
    //aBub[i] = myBubble; //PUT myBubble into the ARRAY
    aBub.add(myBubble);
  }
  //NOW WE HAVE 100 BUBBLES!
  //we're going to write a call to a constructor
}

void draw() {
  background(255);
  //everytime through the draw loop we're releasing all the Bubbles
  //WHAT METHOD DO WE NEED TO CALL TO MAKE THE BUBBLE MOVE?
  //iterate over the array and use the rise_wiggle method
  for (int i = 0; i < aBub.size(); i++) {
    //aBub[i].rise_wiggle();
    //aBub[i].show();
    aBub.get(i).rise_wiggle();
    aBub.get(i).show();
    //System.out.println(millis());
    if ( aBub.get(i).y < 350 && ! aBub.get(i).red)
    aBub.remove(i);
  }
}
