//palindromos
import 'dart:io';

//primero crear la variable de prubeas



void main(){
String oracion = "";
var Prueba_Oracion = <String>[];
print("Escribe la oracion a probar");
oracion = stdin.readLineSync()!;
Prueba_Oracion.add(oracion);
print("La oracion es: ${Prueba_Oracion[0]}");
reconocerpalindromo(Prueba_Oracion);
}

void reconocerpalindromo(List<String> Prueba_Oracion){
  Prueba_Oracion[0] = Prueba_Oracion[0].replaceAll(" ", "");
  print(Prueba_Oracion[0].split(""));
  for(var i = 0; i < Prueba_Oracion[0].length; i++){
    if(Prueba_Oracion[0][i] != Prueba_Oracion[0][Prueba_Oracion[0].length -1 -i]){
      print("comparacion de ${Prueba_Oracion[0][i]} con ${Prueba_Oracion[0][Prueba_Oracion[0].length -1 -i]}");
      return print("No es un palindromo");
    }else{
      return print("Es un palindromo");
    }
  }
}