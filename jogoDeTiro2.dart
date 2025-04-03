import 'dart:io';
import 'dart:math';

/*
Nós continuamos a partir do código deixado pelo professor, com isso conseguimos acrescentar mais um jogador e definir quem ganhou
com o mesmo método utilizado pelo professot. Para declarar o vencedor o método if, else e else if, que quando não acontecesse uma 
das opções ocorre a outra que adicionamo na programação. Deu certo :)
Feito por: Juliana Karla e lais Arlindo
*/

class JogoTiro {
  final int largura = 20; //
  late int alvo; //
  late int alvo2; //
  int jogador = 10; //

  JogoTiro() {
    alvo = Random().nextInt(largura); // 
    alvo2 = Random().nextInt(largura); //
  }

    //1° jogador
  void exibirJogo() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador) {
        stdout.write('🔫');
      } else if (i == alvo) {
        stdout.write('🎯');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }

//2° jogador
  void exibirJogo2() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador) {
        stdout.write('🔫');
      } else if (i == alvo2) {
        stdout.write('🎯');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }

  void moverJogador(String direcao) {
    if (direcao == 'a' && jogador > 0) {
      jogador--;
    } else if (direcao == 'd' && jogador < largura - 1) {
      jogador++;
    }
  }

//verrifica se acertou o alvo
  bool atirar() {
    return jogador == alvo;
  }

  bool atirarJogador2() {
    return jogador == alvo2;
  }
}

void main() {
  JogoTiro jogo = JogoTiro();
  String? comando;
  int opcao;

  print("\n=== JOGO DE TIRO ===");
  print("Use 'a' para esquerda, 'd' para direita e 'f' para atirar!\n");
  print("Quantos jogadores vão jogar?\n");
  print("Escreva 1 ou 2 para selecionar\n");
  opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:

    //modo para apenas um jogador 
      while (true) {
        jogo.exibirJogo();
        stdout.write("Comando: ");
        comando = stdin.readLineSync();

        if (comando == 'a' || comando == 'd') {
          jogo.moverJogador(comando!);
        } else if (comando == 'f') {
          if (jogo.atirar()) {
            print("\n🎯 Você acertou o alvo! Parabéns! 🎯\n");
            break; // Jogo termina quando o jogador 1 acerta
          } else {
            print("\n💥 Errou! Tente novamente.\n");
          }
        } else {
          print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
        }
      }
      break;

    case 2:
  //modo de dois jogadores 
      bool jogador1Venceu = false;
      bool jogador2Venceu = false;

      while (!jogador1Venceu && !jogador2Venceu) {
        print("\nVez do Jogador 1:");
        jogo.exibirJogo();
        stdout.write("Comando: ");
        comando = stdin.readLineSync();

        if (comando == 'a' || comando == 'd') {
          jogo.moverJogador(comando!);
        } else if (comando == 'f') {
          if (jogo.atirar()) {
            print("\n🎯 Jogador 1 acertou o alvo! Parabéns, Jogador 1! 🎯");
            jogador1Venceu = true;
            break; // Jogo termina quando o jogador 1 acerta
          } else {
            print("\n💥 Jogador 1 errou! Tente novamente.\n");
          }
        } else {
          print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
        }

       //se o 1° jogador não ganhou, começa o segundo
        if (!jogador1Venceu) {
          print("\nVez do Jogador 2:");
          jogo.exibirJogo2();
          stdout.write("Comando: ");
          comando = stdin.readLineSync();

          if (comando == 'a' || comando == 'd') {
            jogo.moverJogador(comando!);
          } else if (comando == 'f') {
            if (jogo.atirarJogador2()) {
              print("\n🎯 Jogador 2 acertou o alvo! Parabéns, Jogador 2! 🎯");
              jogador2Venceu = true;
              break; // Jogo termina quando o jogador 2 acerta
            } else {
              print("\n💥 Jogador 2 errou! Tente novamente.\n");
            }
          } else {
            print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
          }
        }
      }

       // Quem ganhou
      if (jogador1Venceu) {
        print("Jogador 1 venceu o jogo!");
      } else if (jogador2Venceu) {
        print("Jogador 2 venceu o jogo!");
      }
      break;
  }
}