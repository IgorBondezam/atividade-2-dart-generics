import 'package:atividade_2_generics_igor/domain/pessoa.dart';

class Banco {

  List<Pessoa> clientes = [];

  adicionarCliente<T extends Pessoa>(T pessoa) {
    clientes.add(pessoa);
  }

}