import 'dart:io';

import 'Empleado.dart';

void main() {
  List<Empleado> empleados = [];

  String nombreEmpleado;
  int edadEmpleado;
  double salarioEmpleado;
  String puestoEmpleado;
  String tipoContratoEmpleado;
  int cantEmpleados;

  print("¿Cuantos empleados desea ingresar a la lista?");
  cantEmpleados = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < cantEmpleados; i++) {
    print("Ingrese el nombre del Empleado ${i + 1}");
    nombreEmpleado = stdin.readLineSync()!;
    print("Ingrese la edad del Empleado ${i + 1}");
    edadEmpleado = int.parse(stdin.readLineSync()!);
    print("Ingrese el salario del Empleado ${i + 1}");
    salarioEmpleado = double.parse(stdin.readLineSync()!);
    print("Ingrese el puesto del Empleado ${i + 1}");
    puestoEmpleado = stdin.readLineSync()!;
    print("Ingrese el tipo de contrato del Empleado ${i + 1}");
    tipoContratoEmpleado = stdin.readLineSync()!;
    print('*' * 30);

    Empleado empleadoTemporal = Empleado(nombreEmpleado, edadEmpleado,
        salarioEmpleado, puestoEmpleado, tipoContratoEmpleado);
    empleados.add(empleadoTemporal);
  }
  mostrarInformacion(empleados);
}

void mostrarInformacion(List<Empleado> empleados) {
  for (var i = 0; i < empleados.length; i++) {
    Empleado empleadoTemporal = Empleado(empleados[i].nombre, empleados[i].edad,
        empleados[i].salario, empleados[i].puesto, empleados[i].tipoContrato);
    empleadoTemporal.mostrarInformacion();
    print('*' * 30);
    print('EMPLEADO #${i + 1}');

    //Método para mostrar información
    empleados[i].mostrarInformacion();

    //Método para aumentar el salario
    print('*' * 30);
    print('El salario del empleado ${i+1} aumentó');
    print('Digite el porcentaje en el que el salario aumentará: ');
    double porcentajeAumentoSalario = double.parse(stdin.readLineSync()!);
    empleados[i].aumentarSalario(porcentajeAumentoSalario);

    //Método para cumplir años
    print('*' * 30);
    print('¡Feliz Cumpleaños para el empleado!');
    empleados[i].cumplirAnios();

    //Método para cambiar el puesto del empleado
    print('*' * 30);
    print(
        'Si el empleado esta en otro puesto, escriba el puesto en el que el empleado esta: ');
    String nuevoPuestoUsuario = stdin.readLineSync()!;
    empleados[i].cambiarPuesto(nuevoPuestoUsuario);

    double nuevaBonificacion = empleados[i].calcularBonificacion();
    print("la bonificacion del empleado  mas el salario es: $nuevaBonificacion");
    print('*' * 30);
  }
}