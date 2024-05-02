import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL ANIDADO 10
  /*
  Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico
  determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel
  de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una
  persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta
  dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina
  su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la
  siguiente:
  EDAD NIVEL        HEMOGLOBINA
0 - 1 mes           13 - 26 g%
> 1 y < = 6 meses   10 - 18 g%
> 6 y < = 12 meses  11 - 15 g%
> 1 y < = 5 años    11.5 - 15 g%
> 5 y < = 10 años   12.6 - 15.5 g%
> 10 y < = 15 años  13 - 15.5 g%
mujeres > 15 años   12 - 16 g%
hombres > 15 años   14 - 18 g%
  */
  //DEFINICIÓN VARIABLE
  int edad;
  double nivelHemo;
  String? genero, resultado, opcionEdad;
  //ENTRADA ALGORITMO
  print("La persona es mayor a un año? Si(SI) y No(NO)");
  opcionEdad = stdin.readLineSync();
  print("Confirme su nivel de Hemoglobina");
  nivelHemo = double.parse(stdin.readLineSync()!);
  print("Por favor confirme su genero Hombre(H) y Mujer(M)");
  genero = stdin.readLineSync();
  //PROCESO ALGORITMO
  if (opcionEdad?.toUpperCase() == "SI") {
    print("Ingrese su edad en Años");
    edad = int.parse(stdin.readLineSync()!);
    if (edad <= 5) {
      // Menor o igual a 5
      if (nivelHemo < 11.5) {
        resultado = "Anemia";
      } else if (nivelHemo > 15) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad <= 10) {
      //Mayor a 5 y Menor o igual 10
      if (nivelHemo < 12.6) {
        resultado = "Anemia";
      } else if (nivelHemo > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad <= 15) {
      //Mayor a 10 y Menor o igual 15
      if (nivelHemo < 13) {
        resultado = "Anemia";
      } else if (nivelHemo > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else {
      //Mayor a 15
      if (genero?.toUpperCase() == "M") {
        //Género mujer
        if (nivelHemo < 12) {
          resultado = "Anemia";
        } else if (nivelHemo > 16) {
          resultado = "Cardiopatía";
        } else {
          resultado = "Normal";
        }
      } else {
        if (genero?.toUpperCase() == "H") {
          //Género mujer
          if (nivelHemo < 14) {
            resultado = "Anemia";
          } else if (nivelHemo > 18) {
            resultado = "Cardiopatía";
          } else {
            resultado = "Normal";
          }
        }
      }
    }
  } else {
    print("Ingrese la edad del bebé en meses");
    edad = int.parse(stdin.readLineSync()!);
    if (edad > 0 && edad <= 1) {
      if (nivelHemo < 13) {
        resultado = "Anemia";
      } else if (nivelHemo > 260) {
        resultado = "Cardiopatía";
      } else {
        resultado = "Normal";
      }
    } else if (edad > 1 && edad <= 6) {
      if (nivelHemo < 10) {
        resultado = "Anemia";
      } else if (nivelHemo > 18) {
        resultado = "Cardipatía";
      } else {
        resultado = "normal";
      }
    }
  }
  //SALIDA ALGORITMO
  print("Usted tiene: $resultado");
}
