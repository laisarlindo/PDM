import 'dart:io';
import 'dart:math';
/*

Editado por: Juliana Karla e Lais Arlindo

*/

class JogoTiro {
  final int largura = 20;
  late int alvo;
  int jogador = 10;

  JogoTiro() {
    alvo = Random().nextInt(largura);
  }

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

  void moverJogador(String direcao) { //movimentação do jogador
    if (direcao == 'a' && jogador > 0) {
      jogador--;
    } else if (direcao == 'd' && jogador < largura - 1) {
      jogador++;
    }
  }

  bool atirar() { //tiro
    return jogador == alvo;
  }
}

void jogo() {
  JogoTiro jogo = JogoTiro();
  String? comando;

  print("\n=== JOGO DE TIRO ===");
  print("Use 'a' para esquerda, 'd' para direita e 'f' para atirar!\n");

  while (true) {
    jogo.exibirJogo();
    stdout.write("Comando: ");
    comando = stdin.readLineSync();
 
    if (comando == 'a' || comando == 'd') { //verificação de acerto
      jogo.moverJogador(comando!);
    } else if (comando == 'f') {
      if (jogo.atirar()) {
        print("\n🎯 Você acertou o alvo! Parabéns! 🎯\n");
        break;
      } else {
        print("\n💥 Errou! Tente novamente.\n");
      }
    } else {
      print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
    }
  }
}
 
 void main(){

  int jogador1 = 0;
  int jogador2 = 0;

   print(''' Quantos jogadores serão?
   1. Jogador solo
   2. Dois jogadores''');

   int escolha = int.parse(stdin.readLineSync()!);

   switch(escolha){
    case 1: jogo();
    print("Vez do primeiro jogador!");

   case 2: jogo();
   print("Agora o segundo jogador!");

   return jogo();
   default: print("O jogo só pode ter no máximo dois jogadores!!");

 }

 void main() {
  // Definindo as pontuações dos jogadores
  int pontuacaoJogador1 = 0;
  int pontuacaoJogador2 = 0;

  // Chamando a função para determinar o vencedor
  String vencedor = decidirVencedor(pontuacaoJogador1, pontuacaoJogador2);
  
  // Exibindo o vencedor
  print('O vencedor é: $vencedor');

// Função que decide o vencedor com base na pontuação
String decidirVencedor(int pontuacaoJogador1, int pontuacaoJogador2) {
  if (pontuacaoJogador1 > pontuacaoJogador2) {
    return 'Jogador 1';
  } else if (pontuacaoJogador2 > pontuacaoJogador1) {
    return 'Jogador 2';
  } else {
    return 'Empate';
  }
}
 }
 }