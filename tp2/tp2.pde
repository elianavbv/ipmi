//  TP2 Eliana Bravo / Legajo: 121116/5 / Comision: 5 //

int slideIndex = 0;
int numSlides = 4;
int slideDuration = 5000; // duración de cada imagen
int startTime;
boolean showButton = false;
PImage[] slides = new PImage[numSlides];

void setup() {
  size(640,480);
  startTime = millis();

  slides[0] = loadImage("1fondo.jpg");
  slides[1] = loadImage("f6.jpg");
  slides[2] = loadImage("f5.jpg");
  slides[3] = loadImage("f4.jpg");
}

void draw() {
  background(255,201,217);

  if (showButton) {
    drawRestartButton();
  } else {
    showSlide(slideIndex);
    if (millis() - startTime > slideDuration) {
      slideIndex++;
      startTime = millis();
    }
    
    if (slideIndex >= numSlides) {
      slideIndex = numSlides - 1;
      showButton = true;
    }
  }
}

void showSlide(int index) {
  image(slides[index], 0, 0, width, height);
  
  fill(227,224,225);
  textSize(45);
  textAlign(CENTER, CENTER);
  switch (index) {
    case 0:
      text("Fahrenheit 451 \n de Ray Bradbury", width / 2, height / 2);
      break;
    case 1:
    textSize(27);
      text(". La obra presenta un mundo en el que los libros \n están prohibidos, en el cual los bomberos son \n los encargados  de quemarlos,para evitar \nque se propague “la infección del pensamiento”", width / 2, height / 2);
      break;
    case 2:
    textSize(25);
      text("La historia se centra en Montag, un bombero. \n El cual a partir de ciertas circunstancias, empieza a \n cuestionarse sus acciones y existencia.", width / 2, height / 2);
      break;
    case 3:
    textSize(25);
      text("La inquietud por saber qué clase de cosas destruye \n lo lleva a leer un libro, después de esto no \n vuelve a ser el mismo y se une a la lucha  \n para defender la libertad.", width / 2, height / 2);
      break;
  }
}
  
void drawRestartButton() {
  fill(152, 0, 3);
  rect(width / 2 - 50, height / 2 - 25, 100, 50);
  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("REINICIAR", width / 2, height / 2);
}

void mousePressed() {
  if (showButton && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 25 && mouseY < height / 2 + 25) {
    slideIndex = 0;
    startTime = millis();
    showButton = false;
  }
}
