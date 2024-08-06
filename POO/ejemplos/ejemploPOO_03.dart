class Vehiculo {
  //Atributos
  late String color;
  late int velocidad;
  late double tamanio;

  //Constructor Clase Vehículo
  // Vehiculo(this.color, this.velocidad, this.tamanio){
  // }
    Vehiculo(String col, int vel, double tam){
      this.color=col;
      this.velocidad=vel;
      this.tamanio=tam;
    }

  //Metodo avanzar
  void avanzar(int velAvanzar)
  {
    this.velocidad= this.velocidad + velAvanzar;
    print("El vehiculo avanza a ${this.velocidad}.");
  }
  //Metodo detenerse
  void detenerse(){
    velocidad=0;
    print("El vehiculo se detiene.");
  }
}

void main(List<String> args) {
  Vehiculo miVehiculo1; //Se declara el objeto
  miVehiculo1 = Vehiculo("blanco", 30, 35); //Se crea(instancia) el objeto
  miVehiculo1.avanzar(60); //El vehiculo estaria avanzando a 90.
  miVehiculo1.avanzar(70); //El vehiculo estaria avanzando a 160.
  miVehiculo1.detenerse();
  /******************** */
  print("*"*24);
  Vehiculo miVehiculo2 = Vehiculo("negro", 10, 4.5); //Declarar e Instanciar al tiempo.
  miVehiculo2.avanzar(50); //El vehiculo estaria avanzando a 60.
  miVehiculo2.detenerse();
  /******************** */
  print("*"*24);
  miVehiculo1.avanzar(40); // El vehiculo estaria avanzando a 40.
}