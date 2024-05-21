import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 01
  /*
  En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */

  String? articulo, opcion;
  int canArticulo, contadorArticulos=0, acumArticulos=0;
  double precio,totalArticulo, totalCompra=0;
  do{
    print("Ingrese el articulo a comprar");
    articulo = stdin.readLineSync();
    print("Ingrese la cantidad a comprar de $articulo");
    canArticulo = int.parse(stdin.readLineSync()!);
    print("Ingrese el precio de $articulo");
    precio = double.parse(stdin.readLineSync()!);
    totalArticulo = canArticulo * precio;
    print("El total en el articulo $articulo sera: $totalArticulo");
    totalCompra += totalArticulo;//Acumulador
    contadorArticulos++;//Contador
    acumArticulos += canArticulo;
    print("Hasta el momento lleva $contadorArticulos Items de articulos");
    print("La cantidad de articulos en total va en: $acumArticulos");
    print("Desea ingresar otro articulo (Si) - (No)");
    opcion = stdin.readLineSync();
    print('*' * 50);
  }while(opcion!.toUpperCase() != "NO");
  print("Señor, el total de la compra sera: $totalCompra");
  print("Va a llevar en total: $contadorArticulos Items");
  print("En total llevara: $acumArticulos articulos");
}