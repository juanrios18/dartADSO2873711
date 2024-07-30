import 'dart:io';
import 'Vehiculo.dart';

void main(List<String> args) {
  int cantIteraciones =5;
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  List<Vehiculo> ListaVehiculos=[];

  //Ciclo para llenar la lista de tipo vehiculo
  for (var i = 0; i < cantIteraciones; i++) {
    print("Ingrese el color del vehiculo ${i+1}");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i+1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i+1}");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    print("*"*40);
    // Se instancia la clase vehiculo y se crea el objeto con los valores del usuario
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    // Se añade el vehiculo a la lista
    ListaVehiculos.add(vehiculo_obj);
  }
  //Ciclo para recorrer elementos  elementos de la lista y llamar los metodos
  for (var i = 0; i < cantIteraciones; i++) {
    print("*"*40);
    print("*** Vehiculo ${i+1} ***");
    ListaVehiculos[i].avanzar(20);
    ListaVehiculos[i].avanzar(80);
    ListaVehiculos[i].avanzar(100);
    ListaVehiculos[i].detenerse();
    print("*"*40);
  }
}