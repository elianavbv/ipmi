PImage uvas;
void setup () {
  background (206, 201, 255);
  size (800,400);
  strokeWeight (1);
  uvas = loadImage ("uvas.jpg");

}

void draw () {
  image(uvas,0,0,400,400);
  fill (3, 149,63);
  triangle (527, 24, 519, 111, 721, 130);
  triangle (435, 117, 527, 26, 519, 227);
  fill (110, 13,209);
  circle (617, 317, 64); //relleno
  circle (544, 154, 60); //linea 2, primero desde la izquierda
  circle (676, 200, 60); //ultimo de la derecha arriba del medio
  circle (626, 190, 60); //arriba del medio a la derecha
  circle (575, 190, 60); //arriba del medio a la izquierda
  circle (520, 200, 60); //arriba de "izquierda al lado del medio"
  circle (550, 260, 60); //abajo de "izquierda al lado del medio"
  circle (550, 230, 60); //izquierda al lado del medio
  circle (615, 354, 60); //
  circle (562, 343, 60); //ultimo 1
  circle (667, 277, 60); //idk 4
  circle (630, 270, 60); //abajo de "derecha al lado del medio"
  circle (650, 240, 60); //derecha al lado del medio
  circle (589, 306, 60); //idk 2
  circle (535, 295, 60); //idk 1
  circle (649, 310, 60); //idk 3 
  circle (598, 265, 64); //abajo circulo del medio
  circle (715, 155, 60); //primera linea, quinto
  circle (671, 150, 60); //primera linea, cuarto
  circle (630, 143, 60); //primera linea, tercero
  circle (535, 120, 60); //primera linea, primero
  circle (584, 143, 64); //primera linea, segundo
  circle (600, 220, 63); //circulo medio
   
}
// Eliana Valeria Bravo Vergel, comision 5, TP1
