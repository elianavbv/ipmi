//Obra de Richard Anuszkiewicz
// Presentación por Youtube: https://youtu.be/Jrk_zwVAf6U
// Eliana Bravo - Legajo 121116/5 - TP3 - Comision 5 
// Para interactuar, presiona espacio para movimiento constante, flecha UP para cambiar colores, y flecha DOWN para detenerlo.

PImage cuadrito;
int numCuadrados = 11;
color []cuadradoUno = new color[numCuadrados];
color []cuadradoDos = new color[numCuadrados];
color []cuadradoTres = new color[numCuadrados];
color []cuadradoCuatro = new color[numCuadrados];

boolean bandera = true; 
boolean banderaUp = false;

void setup () {
  background (224, 222, 229);
  size (800,400);
  cuadrito = loadImage ("cuadrito.jpg");
  
  }

void draw () 
{
  
  colorActual(bandera);
  image(cuadrito,0,0,400,400);
  drawSquare(400,0,200, cuadradoUno);
  drawSquare(600,0,200, cuadradoDos);
  drawSquare(400,200,200, cuadradoTres);
  drawSquare(600,200,200, cuadradoCuatro);
  
}

void drawSquare(float x1,float y1,float total,color[] cuadrado)
{
  for (int i = 0; i < numCuadrados; i++)
  { 
  stroke(242,41,10);
  strokeWeight (4);
  fill(cuadrado[i]);
  square(x1 + (i*10) ,y1 + (i*10) ,total - i*20);
  }
}

void baseColor()
{
  for (int i = 0; i < numCuadrados; i++)
  {
    if (i > 4)
  {
  cuadradoUno[i] = color(255 - i*5,167 + i*5,3 + i*5);
  cuadradoDos[i] = color(122 - i*5,224 + i*5,194 + i*5);
  cuadradoTres[i] = color(149 - i*5,219 + i*5,84 + i*5);
  cuadradoCuatro[i] = color(245 - i*5,133 + i*5,133 + i*5);
  }
  else
  {
  cuadradoUno[i] = color(119 - i*5,192 + i*5,250 + i*5);
  cuadradoDos[i] = color(245 - i*5,133 + i*5,133 + i*5);
  cuadradoTres[i] = color(121 - i*5,139 + i*5,250 + i*5);
  cuadradoCuatro[i] = color(232 - i*5,73 + i*5,195 + i*5);
  }
}
}

void colorAlterado()
{
for (int i = 0; i < numCuadrados; i++)
  {
    if (i > 4)
  {
  cuadradoUno[i] = color(random(255),random(255),random(255));
  cuadradoDos[i] = color(random(255),random(255),random(255));
  cuadradoTres[i] = color(random(255),random(255),random(255));
  cuadradoCuatro[i] = color(random(255),random(255),random(255));
  }
  else
  {
  cuadradoUno[i] = color(random(255),random(255),random(255));
  cuadradoDos[i] = color(random(255),random(255),random(255));
  cuadradoTres[i] = color(random(255),random(255),random(255));
  cuadradoCuatro[i] = color(random(255),random(255),random(255));
  }
  }
}

void colorActual(boolean bandera)
{
if (bandera && banderaUp == false)
{
baseColor();
}
else if (bandera == false && banderaUp == false)
{
colorAlterado();
}
}

color[] randomizadorColores()
{
  color[] colores = new color[numCuadrados]; // declara arreglo de colores con tamaño numCuadrados
  for (int i = 0; i < numCuadrados; i++) {
    colores[i] = color(random(255), random(255), random(255));
  }
  return colores;
}
void keyPressed() 
{
  if (keyCode == 32) 
  {
    bandera = !bandera;
    banderaUp = false;
  }  
  else if (keyCode == UP) 
  {
   banderaUp = true; 
   cuadradoUno = randomizadorColores();
   cuadradoDos = randomizadorColores();
   cuadradoTres = randomizadorColores();
   cuadradoCuatro = randomizadorColores();
   
  } 
  else if (keyCode == DOWN)
  {
    banderaUp = false;
    bandera = true; 
    
  }
}
