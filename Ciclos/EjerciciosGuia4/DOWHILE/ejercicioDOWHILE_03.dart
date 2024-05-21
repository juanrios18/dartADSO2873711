import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 03
  /*
  En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los ndiputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */
  double porcentajeFavor, porcentajeContra;
  int contContra=0, contFavor=0, totalVotos=0;
  String? opcion, opcionTratado;
  do {
    print("Sr. Diputado esta a favor del tratado? (F) (C)");
    opcionTratado = stdin.readLineSync();
    if(opcionTratado!.toUpperCase() == "F"){
      contFavor++;
      totalVotos++;
    }else if(opcionTratado.toUpperCase() == "C"){
      contContra++;
      totalVotos++;
    }else{
      print("Voto nulo");
    }
    print("Hasta el momento van $totalVotos votos");
    print("Desea ingresar otro diputado? (Si) (No)");
    opcion = stdin.readLineSync();
    print('*' * 50);
  } while (opcion!.toLowerCase() != "no");
  porcentajeFavor = (contFavor * 100) / totalVotos;
  porcentajeContra = (contContra * 100) / totalVotos;
  print("El total de votos fue: $totalVotos");
  print("El procentaje a favor es: $porcentajeFavor");
  print("El procentaje en contra es: $porcentajeContra");


}