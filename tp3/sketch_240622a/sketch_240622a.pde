// Eliana Bravo - TP3 - Comision 5 - Legajo 121116/5 //

PImage theospacio;
void setup () {
  background (224, 222, 229);
  size (800,400);
  theospacio = loadImage ("theospacio.jpg");
  
}

void draw () {
  image(theospacio,0,0,400,400);
}
