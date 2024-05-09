import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL DOBLE 04
  /*
  Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
  comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
  distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
  la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
  La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
  pago mensual ingresando el valor de la casa.
  */
  //DEFINICION VARIABLE
  double ingresos, cuotainicial, pagomensual, valorcasa;
  //ENTRADA ALGORITMO
  print("ingrese el valor de la casa");
  valorcasa= double.parse(stdin.readLineSync()!);
  print("ingrese los ingresos mensuales");
  ingresos= double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  cuotainicial=0;
  pagomensual=0;
  if (ingresos>=800000){
    cuotainicial= valorcasa*0.15;
    valorcasa= valorcasa-cuotainicial;
    pagomensual= valorcasa/120;
    }
  if (ingresos < 800000){
    cuotainicial= valorcasa*0.3;
    valorcasa= valorcasa-cuotainicial;
    pagomensual= valorcasa/84;
 }
  //SALIDA ALGORITMO
  print("el comprador debe pagar de cuota inicial de la casa $cuotainicial");
  print("el pago mensual de la casa es de: $pagomensual");
}
