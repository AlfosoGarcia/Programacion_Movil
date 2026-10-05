List<List<int>> MatrixOriginal = [[1, 2, 3],
                                  [4, 5, 6]];
List<List<int>> MatrixTransformada = [[],
                                      [],
                                      []];

void Transformarmatrix(){


for (int i = 0; i < MatrixOriginal[0].length; i++)
{
  for(int j = 0; j < MatrixOriginal.length; j++)
  {
    MatrixTransformada[i].add(MatrixOriginal[j][i]);
  }
  print("numero de la matriz original: ${MatrixOriginal[0][i]}");
  print("numero de la matriz original: ${MatrixOriginal[1][i]}");
}
  print("Matriz transformada: ${MatrixTransformada}");
}


void main(){
  Transformarmatrix();
}