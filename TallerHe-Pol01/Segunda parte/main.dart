import 'dart:io';

abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  double calcularArea() {
    return 3.14159 * radio * radio;
  }

  String toString() {
    return 'Círculo con radio $radio';
  }
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);
  double calcularArea() {
    return lado * lado;
  }

  String toString() {
    return 'Cuadrado con lado $lado';
  }
}

class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double calcularArea() {
    return (base * altura) / 2;
  }

  String toString() {
    return 'Triángulo con base $base y altura $altura';
  }
}

double leerValor(String valor) {
  stdout.write(valor);
  double leerValor = double.parse(stdin.readLineSync() ?? '0');
  return leerValor;
}

void main() {
  Circulo circulo = Circulo(leerValor('Ingrese el radio del círculo: '));
  Cuadrado cuadrado = Cuadrado(leerValor('Ingrese el lado del cuadrado: '));
  Triangulo triangulo = Triangulo(leerValor('Ingrese la base del triángulo: '),
      leerValor('Ingrese la altura del triángulo: '));

  List<Figura> figuras = [circulo, cuadrado, triangulo];

  for (Figura figura in figuras) {
    print('${figura.toString()}:');
    print('Área: ${figura.calcularArea()}\n');
  }
}
