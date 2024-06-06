import 'dart:io';

void main(List<String> args) {
  //Definicion e inicializacion vacio
  List<List<int>> matriz=[];
  int cantFilas=3, cantColumnas=4;
  int numero;
  for (int i = 0; i < cantFilas; i++) {
    List<int>fila=[];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingese el elemento posicion $i,$j");
      numero=int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
    print(matriz);
  }
  print("*" *45);
  print(matriz);

  for (int i = 0; i < matriz.length; i++) {
    //Recorre las filas
    stdout.write("|");
    for (int j = 0; j < matriz[0].length; j++) {
      stdout.write("${matriz[i][j]}|");
    }
    print("");
  }
}