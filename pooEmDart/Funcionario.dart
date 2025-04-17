class Funcionario{
  String? _nome;
   double? _salario;

   //CONSTRUTORES
   ContaBancaria(){
    _nome = " ";
    _salario = 2000;
   }
   Funcionario.valido(this._nome,this._salario);

   //GETTERS e SETTERS
   String get nome => _nome!;

   set nome(String nome){
    _nome=nome;
   }

    double get salario => _salario!;

    set salario(double value){
      if(value < 0){
        print("o salário só pode ser positivo.");
      }
      _salario=value;
    }
}