class Vehiculo {
  //Atributos
  String color;
  int velocidad;
  double tamanio;

  //Constructor Clase Vehículo
  Vehiculo(this.color, this.velocidad, this.tamanio);
  // Vehiculo(String col, int vel, double tam){
  //   this.color=col;
  //   this.velocidad=vel;
  //   this.tamanio=tam;
  // }

  //Metodo avanzar
  void avanzar(int velAvanzar){
    int newVelocidad = this.velocidad+velAvanzar;
    if (newVelocidad <= 200) {
      this.velocidad= newVelocidad;
      print("El vehiculo avanza a ${this.velocidad}.");
    }else {
      print("No puede superar el limite de 200 km/h.");
    }
  }
  //Metodo detenerse
  void detenerse(){
    velocidad=0;
    print("El vehiculo se detiene.");
  }
}