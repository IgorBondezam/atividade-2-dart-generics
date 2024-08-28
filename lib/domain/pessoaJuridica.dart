import 'package:atividade_2_generics_igor/domain/pessoa.dart';

class PessoaJuridica extends Pessoa {

  String razaoSocial;
  String cnpj;

  PessoaJuridica(super.id, super.nome, super.email, this.razaoSocial, this.cnpj);
}