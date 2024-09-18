import 'producto.dart';

class DiscoDuro extends Producto {
  String _tipoDisco;
  int _capacidad;

  DiscoDuro(this._capacidad, this._tipoDisco, int codigoProducto,String nombreProducto,bool disponible,double precio):super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      El tipo de disco es: $_tipoDisco
      La capacidad del disco es: $_capacidad
    """);
  }
  
  void setTipoDisco(String newTipo){
    _tipoDisco = newTipo;
  }

  String getTipoDisco(){
    return _tipoDisco;
  }

  void setcapacidad(int newCapacidad){
    _capacidad = newCapacidad;
  }

  int getCapacidad(){
    return _capacidad;
  }

  getNombre() {}

  @override
  double realizarDescuento() {
    return getPrecio() * 0.20; // Descuento del 20%
  }

}