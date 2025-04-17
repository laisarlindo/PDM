class Produto{
  String? nome;
  int? preco;

  //CONSTRUTORES

  Produto(){
    nome = " ";
    preco = 0;
  }

  Produto.valido(this.nome, this.preco);
}
 void main(){
  //CONSTRUTOR PADRÃO
  Produto produto = new Produto();
  produto.nome = "caneta";
  produto.preco = 20;

  // CONSTRUTOR VALIDO

  Produto produto1 = new Produto.valido("Mochila",90);

  print('''Produtos:
  ${produto.nome} -> ${produto.preco}.
  ${produto1.nome} -> ${produto1.preco}.''');
 }
 
