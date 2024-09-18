import 'electrodomestico.dart';

class Parlante extends Electrodomestico {
  String _potencia;
  double _precio;

  Parlante(this._potencia, this._precio, tieneBluetooth,consumoWats, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      La potencia es: $_potencia
      El precio es: $_precio
    """);
  }

  void setPotencia(String newPotencia){
    _potencia = newPotencia;
  }

  String getPotencia(){
    return _potencia;
  }

  void setPrecio(double newPrecio){
    _precio = newPrecio;
  }

  double getPrecio(){
    return _precio;
  }

  getNombre() {}

}