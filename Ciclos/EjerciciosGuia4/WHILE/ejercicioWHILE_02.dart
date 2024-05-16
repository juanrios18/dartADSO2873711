import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 02
  
  int n, contador = 1, horasTrabajadas;
  double salario;
  
  print('Ingresa el número de obreros: ');
  n = int.parse(stdin.readLineSync()!);

  while (contador <= n) {
    print('Ingrese las horas trabajadas por el obrero $contador: ');
    horasTrabajadas = int.parse(stdin.readLineSync()!);
    if (horasTrabajadas <= 40) {
      salario = horasTrabajadas * 20.0;
    } else {
      salario = (40 * 20.0) + ((horasTrabajadas - 40) * 25.0);
    }

    print('El salario semanal del obrero $contador es: \$${salario.toStringAsFixed(2)}');
    contador++;
  }
}