PImage source;  // source image to work with
int position;  // the current position in the image (which pixel we're on)

// this runs once
void setup() {
  size(800, 530); // size of canvas matches source image
  
  // load the image
  source = loadImage("van.JPG");
  
  // we want to manipulate the pixels of this image directly
  source.loadPixels();

  // show the image
  image(source, 0, 0);
  
  // speed things up
  frameRate(120);  
}

// this runs repeatedly until we tell it to stop
void draw() {
  println(position);
  source.pixels[position] = color(255, 0, 0);
  source.updatePixels();
  image(source, 0, 0); // display the image
  position++;
}
