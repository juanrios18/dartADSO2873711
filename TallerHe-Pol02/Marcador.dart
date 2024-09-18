import 'producto.dart';

class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(this._colorTinta, this._tipoMarcador, codigoProducto, nombreProducto, disponible, precio):super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      El color de tinta es: $_colorTinta
      El tipo de marcador es: $_tipoMarcador
    """);
  }

  void setColor(String newColor){
    _colorTinta = newColor;
  }

  String getColor(){
    return _colorTinta;
  }

  void setTipoMarcador(String newTipoMarcador){
    _tipoMarcador = newTipoMarcador;
  }

  String getTipoMarcador(){
    return _tipoMarcador;
  }

  getNombre() {}
}