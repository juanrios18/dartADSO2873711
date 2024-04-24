void main() {
  print("CONDICIONAL SIMPLE");
  int edad; // DEFINICION
  edad = 19; //ASIGNACION
  if (edad >= 18) {
    print("Usted es mayor de edad");
  }
  print("*************************");
  // CONDICIONAL DOBLE
  print("CONDICIONAL DOBLE");
  bool esMayor = true;
  if (esMayor == true) {
    //SI
    print("Es mayor de edad");
  } else {
    //SINO
    print("Es menor de edad");
  }
  print("**************************");
  print("CONDICIONAL DOBLE - 2");
  double nota = 4.5;
  if (nota >= 3) {
    print("Usted aprobo el examen");
  } else {
    print("Usted no aprobó el examen");
  }
  //CONDICONAL ANIDADO
  print("**************************");
  print("CONDICIONAL ANIDADO");
  int estrato = 6;
  if (estrato == 1) {
    print("Usted es estrato 1");
    print("Se le subsidia el 10% de la factura");
  } else if (estrato == 2) {
    print("Usted es estrato 2");
    print("Se le subsidia el 5% de la factura");
  } else if (estrato == 3) {
    print("Usted es estrato 3");
    print("Paga su factura tal cual");
  } else if (estrato == 4) {
    print("Usted es estrato 4");
    print("Paga un 5% más de la factura");
  } else if (estrato == 5) {
    print("Usted es estrato 5");
    print("Paga un 10% más de la factura");
  } else if (estrato == 6) {
    print("Usted es estrato 6");
    print("Paga un 15% más de la factura");
  } else {
    print("El estrato es incorrecto");
  }
  // CONDICIONAL MULTIPLE
  print("**************************");
  print("CONDICIONAL MULTIPLE");
  int trimestre = 2;
  switch (trimestre) {
    case 1:
      print("TRIMESTRE 1");
      print("Fase de Requerimientos");
      break;
    case 2:
      print("TRIMESTRE 2");
      print("Fase de Análisis");
      break;
    case 3:
      print("TRIMESTRE 3");
      print("Fase de Diseño");
      break;
    case 4:
      print("TRIMESTRE 4");
      print("Fase de Implementación");
      break;
    case 5:
      print("TRIMESTRE 5");
      print("Fase de Pruebas");
      break;
    case 6:
      print("TRIMESTRE 6");
      print("Fase de Mantenimiento");
      break;
    default:
      print("El trimestre es incorrecto");
  } //cierra switch
}//cierra void
