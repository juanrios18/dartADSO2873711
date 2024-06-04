void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 05
  /*
  Calcular la suma siguiente:100 + 98 + 96 + 94 + . . . + 0 en este orden
  */

  //DEFINICION VARIABLES
  int i = 100, disminuye = -2, term = i, suma = 0;

  // ENTRADA - PROCESO ALGORITMO
  do{
    suma += term;
    term += disminuye;
  } while (term >= 0);

  // SALIDA ALGORITMO
  print("La suma es: $suma");
}