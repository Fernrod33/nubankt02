// Modelo de dados que representa a carteira/conta financeira do usuário

// Modelo com os principais valores financeiros do usuário.
class Carteira {
  double saldo;
  double fatura;
  double limite;
  double emprestimo;

  Carteira(this.saldo, this.fatura, this.limite, this.emprestimo);
}
