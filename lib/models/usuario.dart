// Modelo de dados que representa um usuário da aplicação

import 'package:nubankt02/models/carteira.dart';

// Modelo com informações pessoais e financeiras do usuário.
class Usuario {
  String nome;
  int idade;
  Carteira carteira;

  Usuario(this.nome, this.idade, this.carteira);
}
