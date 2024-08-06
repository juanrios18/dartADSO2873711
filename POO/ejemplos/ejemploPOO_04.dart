import 'dart:io';

import 'Vehiculo.dart';

void main(List<String> args) {
  Vehiculo vehi_obj1 =Vehiculo("azul", 40, 2);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(125);
  vehi_obj1.detenerse();

  //Listas o Arrays de Objetos
  List<String> nombresVehiculos = []; //Se crea una lista de String
  for (var i = 0; i < 5; i++) {
    print("Ingrese el nombre del vehículo");
    nombresVehiculos.add(stdin.readLineSync()!);
  }
  print(nombresVehiculos);

  //List<Vehiculo> ListaVehiculos = []; //Se crea una lista de objetos Vehiculos 
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  for (var i = 0; i < 5; i++) {
    print("Ingrese el color del vehiculo ${i+1}");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i+1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i+1}");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    // Se crea el objeto de forma dinamica con los datos que ingrese el usuario
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario); 
    print("*"*40);
    print("Vehiculo: ${i+1}");
    vehiculo_obj.avanzar(30);
    vehiculo_obj.avanzar(20);
    vehiculo_obj.detenerse();
    print("*"*40);
  }
}