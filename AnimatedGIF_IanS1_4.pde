//Ian S 1-4 

ArrayList<PImage> gif;
int n =0;


void setup(){
  size(600,600);
  gif= new ArrayList<PImage>();  //list
 
  int i=0;
  while (i<25) {
    String zero = "";
    if (i<10) zero = "0";
    gif.add(loadImage("frame_"+ zero + i +"_delay-0.04s.gif"));
    i++;
  }
  frameRate(25);
}
  
void draw(){
  PImage frame = gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
 if(n>24) n=0;
}
