//librerias
import 'dart:ffi';
import 'dart:io';
//RETIAR DINERO, CHECAR QUE SEA MULTIPLO DE 10 
void retitar(saldo, monto)
{
    if(monto % 10 != 0)
    {
        print("El monto a retirar debe ser múltiplo de 10");
        return;
    }
    if (monto > saldo)
    print("saldo insuficiente");
    else
    {
        saldo = saldo - monto;
        print("Retiro exitoso, su nuevo saldo es: $saldo");
    }
}

//calcular billetes de 500 a 10

void calcularbilletes(monto)
{
    int billetes500 = monto ~/ 500;
    monto = monto % 500;
    int billetes200 = monto ~/ 200 ;
    monto = monto % 200;
    int billetes100 = monto ~/ 100;
    monto = monto % 100;
    int billetes50 = monto ~/ 50;
    monto = monto % 50;
    int billetes20 = monto ~/ 20;
    monto = monto % 20;
    int billetes10 = monto ~/ 10;
    monto = monto % 10;

    print("Billetes entregados:");
    print("Billetes de 500: $billetes500");
    print("Billetes de 200: $billetes200");
    print("Billetes de 100: $billetes100");
    print("Billetes de 50: $billetes50");
    print("Billetes de 20: $billetes20");
    print("Billetes de 10: $billetes10");
}



//FUNCION PRINCIPAL PRUEBA.

void main ()
{
    int saldo = 1000;
    print ("Ingrese el monto a retirar: ");
    int monto = int.parse(stdin.readLineSync()!);
    retitar(saldo, monto);
    print("Gracias por usar el sistema de cajero automatico");
    calcularbilletes(monto);
}