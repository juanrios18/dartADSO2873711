import 'dart:io';

void main(List<String> args) {
  List<List<int>> matrizProduccion =[
    [30,40,20],
    [10,12,15],
    [8,10,7],
    [25,30,30],
    [12,20,10],
  ];
  List<int> totalArticulos = [0,0,0,0,0];
  List<int> totalTurnos = [0,0,0];
  int mayorProd=0, posicionMayorProd=0;

  for (int i = 0; i < matrizProduccion.length; i++) {//Filas
    for (int j = 0; j < matrizProduccion[0].length; j++) {
      //Se va sumando los valores por articulos (CADA FILA)
      totalArticulos[i] += matrizProduccion[i][j];
      totalTurnos[j] += matrizProduccion[i][j];
    }
  }
  print(totalArticulos);
  print(totalTurnos);
  for (int i = 0; i < totalArticulos.length; i++) {
    print("EL total del articulo #${i+1} es: ${totalArticulos[i]}");
  }
    print("*"*30);
  for (int i = 0; i < totalTurnos.length; i++) {
    print("EL total del turno #${i+1} es: ${totalTurnos[i]}");
  }
  //Sacar el articulo con mayor produccion
  for (int i = 0; i < matrizProduccion.length; i++) {
    if(totalArticulos[i] > mayorProd){
      mayorProd=totalArticulos[i];
      posicionMayorProd = 1;
    }
  }
  print("El articulo de mayor produccion es el articulo #${posicionMayorProd}");
  stdout.write("Con una produccion de $mayorProd");
}