class ContaBancaria{
   String? _titular;
   double? _saldo;

   //CONSTRUTORES
   ContaBancaria(){
    _titular = " ";
    _saldo = 2000;
   }
   ContaBancaria.valida(this._titular,this._saldo);

   //GETTERS e SETTERS
   String get titular => _titular!;

   set titular(String titular){
    _titular=titular;
   }

    double get saldo => _saldo!;

    set saldo(double value){
      if(value < 0){
        print("Não é possivel registrar se o saldo for negativo");
      }
      _saldo=value;
    }
    void main(){
      ContaBancaria contaBancaria1 = new ContaBancaria.valida("Maria clara", 9000);
      print('''${contaBancaria1.titular} possui ${contaBancaria1.saldo} reais na conta ''');
    }
   }
