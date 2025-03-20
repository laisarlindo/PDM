import 'dart:io';
import 'exercicios/barrel.dart';

void exibirMenu(){
  print('''
  1- Exibir Olá, Dart!
  2 Calcular a área de um retângulo
  3- Verificar se um número é par ou ímpar
  4- Comparar dois números
  5- Converter nota para conceito
  6- Exibir contagem progressiva"
  7 -Somar todos os números até um valor especificado
  8 -Exibir a tabuada de um número
  9 -Sair do programa
  ''');}

  void main(){
  int escolha = 0;
  do{
  exibirMenu();
  stdout.write("Escolha uma opção: ");
  int escolha =  int.parse(stdin.readLineSync()!);

  print("");

   switch (escolha) {
    case 1:olaDart(); break;
    case 2:areaRetangulo(); break;
    case 3:parImpar(); break;
    case 4:compararNumeros(); break;
    case 5: notaConceito(); break;
    case 6: conatgemProgressiva(); break;
    case 7: somaNumeros(); break;
    case 8:tabuadaAutomatica(); break;
    case 9: print("Desejo sair do programa"); break;

  default: print("O valor não corresponde com o programa");
}
  } while(escolha !=9);
}