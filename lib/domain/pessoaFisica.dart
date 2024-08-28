import 'package:atividade_2_generics_igor/domain/pessoa.dart';

class PessoaFisica extends Pessoa {

  int idade;
  String cpf;

  PessoaFisica(super.id, super.nome, super.email, this.idade, this.cpf);
}