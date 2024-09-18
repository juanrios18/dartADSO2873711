import 'producto.dart';

class Electrodomestico extends Producto {
  int _consumoWats;
  bool _tieneBluetooth;

  Electrodomestico(this._consumoWats, this._tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      El consumo de wats es de: $_consumoWats
      Cuenta con Bluetooth: $_tieneBluetooth ? "Si":"No"
    """);
  }

  int getconsumo() {
    return _consumoWats;
  }

  void setConsumo(int newConsumo){
    _consumoWats = newConsumo;
  }

  bool getBluetooth(){
    return _tieneBluetooth;
  }

  void setBluetooth(bool newEstado){
    _tieneBluetooth = newEstado;
  }

int calcularPrecioConsumo(int horas) {
    return _consumoWats * horas * 1;
  }
}