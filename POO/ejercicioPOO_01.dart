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
  print("Bienvenido");
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

    Empleado empleadoTemporal = Empleado(nombreEmpleado, edadEmpleado, salarioEmpleado, puestoEmpleado, tipoContratoEmpleado);
    empleados.add(empleadoTemporal);
  }
  mostrarInformacion(empleados);
}

void mostrarInformacion(List<Empleado> empleados){
  for (var i = 0; i < empleados.length; i++) {
      Empleado empleadoTemporal = Empleado(empleados[i].nombre,empleados[i].edad, empleados[i].salario, empleados[i].puesto, empleados[i].tipoContrato);
      empleadoTemporal.mostrarInformacion();
  }
}