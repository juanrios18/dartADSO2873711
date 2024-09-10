class Futbolista {
  String _equipo;
  String _posicion;
  int cantidadGoles;

  Futbolista(this._equipo, this._posicion, this.cantidadGoles);

  void setEquipo(String equipo){
    _equipo = equipo;
  }

  String getEquipo(){
    return _equipo;
  }

  void setPosicion(String posicion){
    _posicion = posicion;
  }

  String getPosicion(){
    return _posicion;
  }

  void setCantGoles(int goles){
    cantidadGoles = goles;
  }

  int getCanGoles(){
    return cantidadGoles;
  }
  
  bool esTitular = false;
  
}