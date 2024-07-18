import 'dart:io';

class Persona {
  //Atributos
  String nombre;
  String genero;
  double estatura;
  DateTime fechaNac;

  //Constructor
  Persona(this.nombre, this.genero, this.estatura, this.fechaNac);

  int calcularEdad() {
    DateTime hoy = DateTime.now();
    int edad = hoy.year - fechaNac.year;
    if (hoy.month < fechaNac.month || 
        (hoy.month == fechaNac.month && hoy.day < fechaNac.day)) {
      edad--;
    }
    return edad;
  }

  //Metodos
  void saludar(){
    print("La persona ${nombre} saluda");
  }
  void comunicarse(){
    print("La persona ${nombre} se comunica");
  }void dormir(){
    print("La persona ${nombre} duerme");
  }void mostrarEdad(){
    int edad = calcularEdad();
    print("La persona ${nombre} tiene $edad años");
  }
  void mostrarInformacion(){
    print("La persona se llama ${nombre}, es de genero ${genero} y mide ${estatura}");
  }
}

void main(List<String> args) {
  Persona persona1;
  persona1 = Persona("Juan", "Masculino", 1.81, DateTime (2010,12,24));
  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarInformacion();
  /************************ */
  print("*"*67);
  Persona persona2 = Persona("Pedro", "Masculino", 1.75, DateTime (2005,04,18));
  persona2.saludar();
  persona2.comunicarse();
  persona2.dormir();
  persona2.mostrarEdad();
  persona2.mostrarInformacion();
  /************************ */
  print("*"*67);
  String nombrePersona3 = "Jhon Alexander";
  String generoPersona3 = "Masculino";
  double estaturaPersona3 = 1.50;
  Persona persona3 = Persona(nombrePersona3, generoPersona3, estaturaPersona3, DateTime (1995,01,25));
  persona3.saludar();
  persona3.comunicarse();
  persona3.dormir();
  persona3.mostrarEdad();
  persona3.mostrarInformacion();
  /************************ */
  print("*"*67);
  String nombrePersona;
  String generoPersona;
  double estaturaPersona;
  DateTime fechaNacPersona;
  print("Ingrese el nombre de la persona");
  nombrePersona = stdin.readLineSync()!;
  print("Ingrese el genero de la persona");
  generoPersona = stdin.readLineSync()!;
  print("Ingrese la estatura de la persoa");
  estaturaPersona = double.parse(stdin.readLineSync()!);
  print("Ingrese la fecha de nacimiento de la persona");
  fechaNacPersona = DateTime.parse(stdin.readLineSync()!);
  Persona persona4 = Persona(nombrePersona, generoPersona, estaturaPersona, fechaNacPersona);
  persona4.saludar();
  persona4.comunicarse();
  persona4.dormir();
  persona4.mostrarEdad();
  persona4.mostrarInformacion();
}