class Pessoa {
  String nome;
  int idade;
  double altura;

  void dormir() {
    print("$nome está dormindo");
  }

  void niver() {
    idade++;
  }
}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.nome = "Joao Leite";
  pessoa.idade = 30;
  pessoa.altura = 1.80;

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Paulo";
  pessoa2.idade = 35;
  pessoa2.altura = 1.68;

  print("nome pessoa: ${pessoa.nome}");
  print("nome pessoa2: ${pessoa2.nome}");

  print("idade pessoa: ${pessoa.idade}");
  pessoa.niver();
  print("pessoa fez aniversario sua idade agora é ${pessoa.idade}");

  pessoa.dormir();
}
