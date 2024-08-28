import 'package:atividade_2_generics_igor/atividade_2_generics_igor.dart';
import 'package:atividade_2_generics_igor/domain/banco.dart';
import 'package:atividade_2_generics_igor/domain/pessoaFisica.dart';
import 'package:atividade_2_generics_igor/domain/pessoaJuridica.dart';
import 'package:test/test.dart';

void main() {
  test('adicionar PessoaFisica no banco', () {
    PessoaFisica pessoaFisica = new PessoaFisica(1, "Igor", "igorbteste@gmail.com", 20, "12345678910");
    
    Banco banco = new Banco();
    
    banco.adicionarCliente(pessoaFisica);
    
    expect(banco.clientes.length, 1);
    expect(banco.clientes[0].runtimeType, PessoaFisica);
  });

  test('adicionar PessoaJuridica no banco', () {
    PessoaJuridica pessoaJuridica = new PessoaJuridica(1, "Igor", "igorbteste@gmail.com", "Igor Interprices", "96061828000129");

    Banco banco = new Banco();

    banco.adicionarCliente(pessoaJuridica);

    expect(banco.clientes.length, 1);
    expect(banco.clientes[0].runtimeType, PessoaJuridica);
  });

  test('adicionar os dois tipos de pessoa no banco', () {
    PessoaJuridica pessoaJuridica = new PessoaJuridica(1, "Igor", "igorbteste@gmail.com", "Igor Interprices", "96061828000129");
    PessoaFisica pessoaFisica = new PessoaFisica(1, "Igor", "igorbteste@gmail.com", 20, "12345678910");

    Banco banco = new Banco();

    banco.adicionarCliente(pessoaJuridica);
    banco.adicionarCliente(pessoaFisica);

    expect(banco.clientes.length, 2);
    expect(banco.clientes[0].runtimeType, PessoaJuridica);
    expect(banco.clientes[1].runtimeType, PessoaFisica);
  });
}
