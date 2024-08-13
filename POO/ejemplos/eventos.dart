class Evento {
  String _nombre; // Atributo privado
  int cantPersonas; // Atributo publico
  DateTime _fecha; // Atributo privado

  // Constructor
  Evento(this._nombre, this.cantPersonas, this._fecha);

  // Métodos SETTERS y GETTERS
  void setNombre(String nom) {
    _nombre = nom;
  }
  String getNombre() {
    return _nombre;
  }
  void setCantPersonas(int cant) {
    cantPersonas = cant;
  }
  int getCantPersonas() {
    return cantPersonas;
  }
  void setFechaEvento(DateTime fecha) {
    _fecha = fecha;
  }
  DateTime getFechaEvento() {
    return _fecha;
  }
  void _mostrarInfo() {
    print("""
        ***********************************
          Nombre:$_nombre.
          Cantidad Personas:$cantPersonas.
          Fecha:$_fecha.
        ***********************************
  """);
  }
  void mostrarInformacion() {
    _mostrarInfo();
  }
}