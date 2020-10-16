  
  class Conta{
  String cliente;
  int numConta;
  double saldo;
  
  
 Conta(this.saldo, this.cliente, this.numConta);
  
  void sacar(){
  
  double valorSacar = 100.3;
  print("O valor sacado foi: ${valorSacar}");
}

void depositar (){
  
  double valorDepositado = 10.20;
  
  print("O valor depositado foi: ${valorDepositado}");
}
}

class ContaPoupanca extends Conta{
  
 double rendimentoDia = 1.02; //Não fiz int porque faz mais sentido o rendimento ser double (2% ao dia)
  
ContaPoupanca(double saldo,String cliente, int numConta, this.rendimentoDia) : super (saldo, cliente, numConta);
  
  void calcularnovosaldo (){
    saldo = saldo * rendimentoDia;
    print("Saldo atualizado da poupança:  ${saldo}");
    
  }
  
}

class ContaCorrente extends Conta {
  
  double limite;
  
  ContaCorrente(double saldo,String cliente, int numConta, this.limite) : super (saldo, cliente, numConta);
  
@override
void sacar(){
super.sacar();
print("Você pode sacar até -${limite}");
}
}

void main(){
  
  
  ContaCorrente contacorrente = ContaCorrente (850.56, "Aline", 00001, 450.0 );
  contacorrente.depositar();
  contacorrente.sacar();
  
  print("Cliente:  ${contacorrente.cliente}");
  print("Número da conta: ${contacorrente.numConta}");
  print("Saldo: ${contacorrente.saldo}");
  print("Limite da conta:  ${contacorrente.limite}");
   
 
  }
  

  
  

  