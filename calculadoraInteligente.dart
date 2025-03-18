import 'dart:io';

void main(){
  print("1 Exibir Olá, Dart!");
  print("2 Calcular a área de um retângulo");
  print("3  Verificar se um número é par ou ímpar");
  print("4  Comparar dois números");
  print("5 Converter nota para conceito");
  print("6  Exibir contagem progressiva");
  print("7  Somar todos os números até um valor especificado");
  print("8  Exibir a tabuada de um número");
  print("9 Sair do programa");
  int escolha =  int.parse(stdin.readLineSync()!);

   switch (escolha) {
    case 1:
      print("Olá,dart!");
      break;

      case 2:
      print ("Digite a base do retângulo");
  double base = double.parse(stdin.readLineSync()!);

  print("Digite a altura do retâgulo");
  double altura = double.parse(stdin.readLineSync()!);

   
   double area = base*altura;

  print("A area do retâgulo é $area");
  break;

   
  case 3:
  print ("Digite um número inteiro");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero %2 == 0){
    print ("O número $numero é par");
  } else{
    print ("O número $numero é ímpar");
    
  }
  break;
    case 4:

  print ("Digite um número inteiro");
  int num = int.parse(stdin.readLineSync()!);

print ("Digite mais um número inteiro");
  int num2 = int.parse(stdin.readLineSync()!);

   if (num  == num2){
    print("são iguais");
  }
   else if(num > num2){
     print("Número um $num é maior que o $num2");
 
  }else{
  print ("São diferentes");
  
}
  break;
   case 5:
  print ("Digite a sua nota");
  int nota = int.parse(stdin.readLineSync()!);

  if (nota >=90 && nota <=100){
    print("Sua nota é A");
  }
   else if(nota >=80 && nota <= 89 ) {
     print("Sua nota é B");
   }
     
     if (nota >=70 &&  nota <=79){
    print("A sua nota é C");
  }
   else if(nota >=60 &&  nota <=69 ){
     print("A sua nota é D");
 
  }else if(nota <60) {
  print (" A sua nota é F");
  
}
  break;
case 6:
print("Digite um número");
  int numero = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= numero; i++){
  print(i);
  
  }
  break;
  case 7:
  print("Digite um número");


int num = int.parse(stdin.readLineSync()!);

  
  int contador = 1;
  
  int soma = 0;

  while (contador < num) {
    soma += contador;
    contador++;
    
  }
  
  print(soma);
  break;
  case 8:
  print("Digite um número");
int num = int.parse(stdin.readLineSync()!);


  int valor = 0;
  
  for (int i = 1; i <= 10; i++) {
    valor = i*num;
    
    print( valor);
    
  }
  break;
  case 9:
  print("Desejo sair do programa");
  break;
  default: print("O valor não corresponde com o programa");
}
}