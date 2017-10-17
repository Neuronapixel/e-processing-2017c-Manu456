Figura miFigura;
ArrayList<Figura> tablero;
ArrayList<Figura> fila;
void setup(){
  size(600,600,P3D);
  tablero = new ArrayList<Figura>();
  for(int i =0 ;i<8; i++){
    ArrayList estaFila = new ArrayList<Figura>();
    for( j =0 ; j<8 ; j++){
      Figura nuevaFigura = new Figura*40,4*40,0);
      estaFila.add(nuevaFigura);
      
    }
    tablero.add(estaFila);
  }
  miFigura = new Figura();
}
void draw(){
  background(0);
  translate(width/2,height/2);
  float yValue = map(mouseX,(-width/2),width/2,0,2);
  float yValue = map(mouseY,(-width/2),width/2,0,2);
  rotateY(PI*yValue);
  rotateX(PI*xValue);
//translate(40,40,40);
for(int i =0; i < tablero.size(); i++){
  ArrayList estaFila = tablero.ger(i);
  for(int j=0; j < estaFila.size();j++){
    Figura estaFila = estaFila.get(j);
  }
}
//miFigura.run();

}

//TAREA 4; ARREGLAR LOS VALORES DE X,Y Z
//PARA  QUE NOS PERMITA ARMAR UNA CUADRICULA