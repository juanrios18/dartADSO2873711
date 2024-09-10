import 'dart:ffi';

class Programador {
  String _empresa;
  Float _saldo;

  Programador(this._empresa,this._saldo);


  void setEmpresa(String empresa){
    _empresa = empresa;
  }
  
  String getEmpresa(){
    return _empresa;
  }

  void setSalario(Float salario){
    _saldo = salario;
  }

  Float salario(){
    return _saldo;
  } 
}