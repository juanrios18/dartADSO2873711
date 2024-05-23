void main(List<String> args) {
  // Definicion y asignacion de Lista vacia
  // List<int> numeros1 = [];
  // Definicion/Asignacion Lista con elementos
  List<int> pesos = [65, 75, 70, 48, 65, 55, 48];
  List<String> frutas = ['Manzana','Pera','Fresa'];
  List<bool> estados = [true, false, false, true];
  List<double> estaturas = [1.65, 1.52, 1.55, 1.80];
  // Definicion/Asignacion de Listas dinámicas
  List<dynamic> listaDina = [30, 4.5, 'Pepe', true, ['Mango','mora',frutas], pesos];

  // Acceder a los elementos
  print(pesos);
  print(frutas);
  print(estados);
  print(estaturas);
  print(listaDina);
  print(frutas[1]);// Pera
  print(pesos[5]);// 55
  print(listaDina[2]);// Pepe
  print(listaDina[4][2][2]);// Fresa
  print(listaDina[4][2][0]);// Manzana

}