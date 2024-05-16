import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 04
  int n; 
  int contador = 1;
  int amarilla = 0;
  int rosada = 0;
  int roja = 0;
  int verde = 0;
  int azul = 0;
  int ultimoDigitoPlaca;

  print('Ingrese el número de autos que entran a la Ciudad de México: ');
  n = int.parse(stdin.readLineSync()!);

  while (contador <= n) {
    print('Ingrese el último dígito de la placa del auto $contador: ');
    ultimoDigitoPlaca = int.parse(stdin.readLineSync()!);

    switch (ultimoDigitoPlaca) {
      case 1:
      case 2:
        amarilla++;
        break;
      case 3:
      case 4:
        rosada++;
        break;
      case 5:
      case 6:
        roja++;
        break;
      case 7:
      case 8:
        verde++;
        break;
      case 9:
      case 0:
        azul++;
        break;
      default:
        print('Dígito no válido. Por favor ingrese un dígito del 0 al 9.');
        continue;
    }

    contador++;
  }

  print('De los $n autos que entran a la Ciudad de México, la distribución de calcomanías es la siguiente:');
  print('Amarilla: $amarilla autos');
  print('Rosada: $rosada autos');
  print('Roja: $roja autos');
  print('Verde: $verde autos');
  print('Azul: $azul autos');
}