/*Na descriçã do teste tem falando "3 ou 5", então seria uma exclusão, já nos exemplos é como se fosse um "E" 
pois mostra os 2 juntos, então eu fiz de acordo com a logica dos exemplos */

import 'dart:io';

void main() {
  int zero = 0;
  int resultadoSoma = 0;
  List<int> resultados = [];

  stdout.write("Digite um número: ");
  String? inputNumber = stdin.readLineSync();

  try {
    int number = int.parse(inputNumber!);

    // Aqui vamos ter 2 while, referente ao 3 e ao 5
    while (zero < number) {
      resultados.add(zero);
      zero += 3;
    }
    zero = 0;
    while (zero < number) {
      resultados.add(zero);
      zero += 5;
    }

    // Aqui fazemos o tratamento para não repetir os multiplos de 3 e 5
    List<int> resultadosTratados = resultados.toSet().toList();
    resultadosTratados.sort();

    // Fazemos a soma de nossos números da lista, após tratados
    for (int valor in resultadosTratados) {
      resultadoSoma += valor;
    }

    stdout.write("${resultadoSoma}");

    //Para retornar um erro caso seja digitado algo diferente de um número ou um numero muito grande!
  } catch (FormatException) {
    print("Você não digitou um número, não vou conseguir prosseguir!");
  }
}
