import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 06
  /*
  Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla. Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría. 
  */
  
  int edad, nino=0, joven=0, adulto=0, adultoMayor=0;
  double peso, pesoNino=0, pesoJoven=0, pesoAdulto=0, pesoAdultoMayor=0;
  double promediopeNino, promediopeJoven, promediopeAdulto, promediopeAdultoMayor;

  for (int i=0; i<50; i++) {
    print("PERSONA" + (i+1).toString());
    print("Escriba su edad");
    edad = int.parse(stdin.readLineSync()!);
    print("Escriba su peso(kg)");
    peso = double.parse(stdin.readLineSync()!);

    if (edad<12) {
      nino = nino + 1;
      pesoNino = pesoNino + peso;
      promediopeNino = pesoNino / nino;
    }
    else if (edad<29) {
      joven = joven + 1;
      pesoJoven = pesoJoven + peso;
      promediopeJoven = pesoJoven / joven;
    }
    else if (edad<59) {
      adulto = adulto + 1;
      pesoAdulto = pesoAdulto + peso;
      promediopeAdulto = pesoAdulto / adulto;
    }
    else {
      adultoMayor = adultoMayor + 1;
      pesoAdultoMayor = pesoAdultoMayor + peso;
      promediopeAdultoMayor = pesoAdultoMayor / adultoMayor;
    }
  }
  print("El promedio de peso en niños es: $promediopeNino (kg) en $nino niños");
}