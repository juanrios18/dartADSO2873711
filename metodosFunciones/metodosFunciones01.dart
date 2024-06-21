void main(List<String> args) {
  sumar();
  sumarEficiente(4,3);
  sumarEficiente(8,10);
  sumarEficiente(7,2);
  print("*"*30);
  saludar("Juan", "M");
  saludar("Dulcinea", "F");
  print("*"*30);
  List<String> frutas = ["Mango","Pera","Uva"];
  List<String> nombres = ["Juan","Ana","Eva"];
  mostrarLista(frutas, "Fruta");
  print("*"*30);
  mostrarLista(nombres, "Nombre");
  double multi = multiplicacion(3, 5);
  print("La multiplicacion es: $multi");
}
double multiplicacion(double num1, double num2) {
  double multiplicacion = num1 * num2;
  return multiplicacion;
}

void mostrarLista(List<String> lista,String nombre) {
  for (var i = 0; i < lista.length; i++) {
    print("$nombre #${i+1} ${lista[i]}");
  }
}

void saludar(String nombre, String genero){
  if(genero == "M"){
    print("Hola $nombre, eres hermoso"); 
  } else {
    print("Hola $nombre, eres hermosa");
  }
}

void sumarEficiente(int num1, int num2){
  int suma;
  suma=num1+num2;
  print("La suma es: $suma");
}

void sumar(){
  int a,b,c;
  a=5;
  b=3;
  c=a+b;
  print("La suma es: $c");
}