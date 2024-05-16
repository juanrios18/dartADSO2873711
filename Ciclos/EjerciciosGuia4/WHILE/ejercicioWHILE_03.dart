import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 03
  
  int n;
  int contador = 1;
  int hombres = 0;
  int mujeres = 0;
  String? genero;

  stdout.write('Ingresa el número total de personas: ');
  n = int.parse(stdin.readLineSync()!);

  while (contador <= n) {
  print('Ingrese el género (Hombre/Mujer) de la persona $contador: ');
    genero = stdin.readLineSync()!.toLowerCase();

    if (genero == 'hombre') {
      hombres++;
    } else if (genero == 'mujer') {
      mujeres++;
    } else {
      print('Género no válido. Por favor ingrese Hombre o Mujer.');
      continue;
    }
    contador++;
  }

  print('En el grupo de $n personas hay:');
  print('Hombres: $hombres');
  print('Mujeres: $mujeres');
}