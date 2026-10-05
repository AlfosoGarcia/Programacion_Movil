//ESTE PROGRAMA DEBE IMPRIMIR PATRONES DE NUMEROS UTILIZANDO RECURSIVIDAD
import 'dart:io';
void funcionrecursiva(int n)
{
    if(n > 0)
    {
        print('*' *  n);
        funcionrecursiva(n - 1);
    }
     print('*' *  n);

}



void main()
{
  print("Ingrese un numero para la funcion recursiva: ");
  int n = int.parse(stdin.readLineSync()!);
  print("La funcion recursiva imprimira los numeros desde $n hasta 1");
  funcionrecursiva(n);
}
