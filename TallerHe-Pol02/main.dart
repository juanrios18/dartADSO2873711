import 'dart:io';

import 'discoDuro.dart';
import 'marcador.dart';
import 'parlante.dart';
import 'portatil.dart';

void main(List<String> args) {
  int option, contador = 1;
  List<DiscoDuro> discosDuros = [];
  List<Marcador> marcadores = [];
  List<Portatil> portatiles = [];
  List<Parlante> parlantes = [];
  do {
  print("""
Seleccione una opción:
1)	Crear un Disco Duro
2)	Crear un Marcador
3)	Crear un Portátil
4)	Crear un Parlante
5)	Vender un Disco Duro
6)	Vender un Marcador
7)	Vender un Portátil
8)	Vender un Parlante
9)	Calcular el precio del consumo del Portátil
10)	Calcular el precio de consumo del Parlante
11)	Salir
""");
  option = int.parse(stdin.readLineSync()!);

  switch(option){
    case 1:
      print("Ingrese el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Se encuentra disponible? (true) Si, (false) No");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingrese el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingrese el tipo del disco duro (HDD o SSD)");
      String tipoDisco = stdin.readLineSync()!;
      print("Ingrese la capacidad del almacenamiento");
      int capacidad = int.parse(stdin.readLineSync()!);
      DiscoDuro discoDuro = DiscoDuro(capacidad, tipoDisco, contador, nombre, disponible, precio);
      discosDuros.add(discoDuro);
      contador++;
      break;

    case 2:
      print("Ingrese el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Se encuentra disponible? (true) Si, (false) No");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingrese el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingrese el color de la tinta del marcador");
      String colorTinta = stdin.readLineSync()!;
      print("Ingrese el tipo de marcador que es el producto");
      String tipoMarcador = stdin.readLineSync()!;
      Marcador marcador = Marcador(colorTinta, tipoMarcador, contador, nombre, disponible, precio);
      marcadores.add(marcador);
      contador++;
      break;

    case 3:
      print("Ingrese el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Se encuentra disponible? (true) Si, (false) No");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingrese el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("ingrese el tamaño de la memoria del portatil");
      int tamanoMemoria = int.parse(stdin.readLineSync()!);
      print("Ingrese el nombre del procesador del portátil");
      String procesador = stdin.readLineSync()!;
      print("Ingrese el consumo de los wats que tiene el portátil");
      int consumoWats = int.parse(stdin.readLineSync()!);
      Portatil portatil = Portatil(tamanoMemoria, procesador, consumoWats, true, contador, nombre, disponible, precio);
      portatiles.add(portatil);
      contador++;
      break;

    case 4:
      print("Ingrese el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Se encuentra disponible? (true) Si, (false) No");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingrese el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingrese la potencia que tiene el parlante");
      String potencia = stdin.readLineSync()!;
      print("Ingrese el peso que tiene el parlante");
      double peso = double.parse(stdin.readLineSync()!);
      print("Ingrese el consumo de los wats que tiene el portátil");
      int consumoWats = int.parse(stdin.readLineSync()!);
      Parlante parlante = Parlante(potencia, peso, consumoWats, true, contador, nombre, disponible, precio);
      parlantes.add(parlante);
      contador++;
      break;

    case 5:
      print("Ingrese el disco duro que quiere comprar");
      for (var i = 0; i < discosDuros.length; i++) {
        print("${i + 1}. ${discosDuros[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("El producto: ${discosDuros[posicion - 1].getNombre()} fue vendido con precio de: ${discosDuros[posicion - 1].realizarDescuento()}");
      discosDuros.removeAt(posicion - 1);
      break;

    case 6:
      print("Ingrese el marcador que quiere comprar");
      for (var i = 0; i < marcadores.length; i++) {
        print("${i + 1}. ${marcadores[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("El producto: ${marcadores[posicion - 1].getNombre()} fue vendido con precio de: ${marcadores[posicion - 1].realizarDescuento()}");
      marcadores.removeAt(posicion - 1);
      break;

    case 7:
      print("Ingrese el portatil que quiere comprar");
      for (var i = 0; i < portatiles.length; i++) {
        print("${i + 1}. ${portatiles[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("El producto: ${portatiles[posicion - 1].getNombre()} fue vendido con precio de: ${portatiles[posicion - 1].realizarDescuento()}");
      portatiles.removeAt(posicion - 1);
      break;

    case 8:
      print("Ingrese el parlante que quiere comprar");
      for (var i = 0; i < parlantes.length; i++) {
        print("${i + 1}. ${parlantes[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("El producto: ${parlantes[posicion - 1].getNombre()} fue vendido con precio de: ${parlantes[posicion - 1].realizarDescuento()}");
      parlantes.removeAt(posicion - 1);
      break;

    case 9:
      print("Ingrese el portatil que quiere ver su consumo en wats");
      for (var i = 0; i < portatiles.length; i++) {
        print("${i + 1}. ${portatiles[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("Ingrese las horas que ha estado siendo utilizado");
      int horas = int.parse(stdin.readLineSync()!);
      print("El producto: ${portatiles[posicion - 1].getNombre()} tiene un valor de: ${portatiles[posicion - 1].calcularPrecioConsumo(horas)}");
      break;
    
    case 10:
      print("Ingrese el parlante que quiere ver su consumo en wats");
      for (var i = 0; i < parlantes.length; i++) {
        print("${i + 1}. ${parlantes[i].getNombre()}");
      }
      int posicion = int.parse(stdin.readLineSync()!);
      print("Ingrese las horas que ha estado siendo utilizado");
      int horas = int.parse(stdin.readLineSync()!);
      print("El producto: ${parlantes[posicion - 1].getNombre()} tiene un valor de: ${parlantes[posicion - 1].calcularPrecioConsumo(horas)}");
      break;

    case 11:
    print("Regrese pronto, Hasta luego 🤗");
      break;

    default:
      print("Ingrese una opción correcta");
      break;
  }
  } while (option != 11);
}