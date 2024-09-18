class Producto {
  int _codigoProducto;
  String _nombreProducto;
  bool _disponible;
  double _precio;

  Producto(this._codigoProducto, this._nombreProducto, this._disponible, this._precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      El codigo del producto es: $_codigoProducto
      El nombre del producto es: $_nombreProducto
      Se encuentra disponible: $_disponible ? "Si":"No"
      El precio del producto es: $_precio
    """);
  }


  double realizarDescuento() {
    return _precio;
  }

  void setCodigoProducto(int newCodigo){
    _codigoProducto = newCodigo;
  }

  int getCodigoProducto(){
    return _codigoProducto;
  }

  void setNombreProducto(String newNombre){
    _nombreProducto = newNombre;
  }

  String getNombreProducto(){
    return _nombreProducto;
  }

  void setDisponible(bool newEstado){
    _disponible = newEstado;
  }

  bool getDisponible(){
    return _disponible;
  }

  void setPrecio(double newPrecio){
    _precio = newPrecio;
  }

  double getPrecio(){
    return _precio;
  }
}