var numeros = <int>[30,15,50,12,1,5,45,80,95,60,55,100,72];


void Media(){
  
  
}

void ordenaminetoydatosresultantes()
{
  double x = 0;
  double mediaresultante = 0;
  int temporal = 0;
  var aprobados = <int>[];
  var reprobados = <int>[];
  for(var i = 0; i < numeros.length; i++){
    print("El numero es: ${numeros[i]}");
    x = numeros[i] + x;
    mediaresultante = x / numeros.length;
  }
  print("Prueba de suma, la suma es : $x");
  print("EL promedio del grupo es : $mediaresultante");

  
  for(var i = 0; i < numeros.length; i++ ){
    temporal = numeros[i];
    if (numeros[i] > 60){
      aprobados.add(numeros[i]);
    }else{
      reprobados.add(numeros[i]);
    }
    for(var j = i + 1; j < numeros.length; j++){
      if(numeros[i] > numeros[j]){
        temporal = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = temporal;
      }

    }
  }
  print("El ordenamiento de menor a mayor es: $numeros");
  int menor = numeros[0];
  int mayor = numeros[numeros.length - 1];
  int aprobadoscount = aprobados.length;
  int reprobadoscount = reprobados.length;
  print("a calificacion mas baja es : $menor");
  print("a calificacion mas alta es : $mayor");
  print("los alumnos aprobados son: $aprobadoscount");
  print("los alumnos reprobados son: $reprobadoscount");
}

void main(){
  print("pruebas para que corra");
  Media();
  ordenaminetoydatosresultantes();
}
