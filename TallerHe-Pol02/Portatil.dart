import 'electrodomestico.dart';

class Portatil extends Electrodomestico {
  int _tamanoMmemoria;
  String _procesador;

  Portatil(this._tamanoMmemoria, this._procesador, consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      El tamaño de la memoria es: $_tamanoMmemoria
      El procesor es: $_procesador
    """);
  }

  int get_tamano() {
    return _tamanoMmemoria;
  }

  void settamano(int newTamano){
    _tamanoMmemoria = newTamano;
  }

  String get_procesador() {
    return _procesador;
  }

  void setprocesador(String newProcesador) {
    _procesador = newProcesador;
  }

  getNombre() {}

}