class Pessoa {
  String nome;
  int idade;
  double altura;

  Pessoa(this.nome, this.idade, this.altura);

  Pessoa.nascer(this.nome, this.altura) {
    idade = 0;
    print("$nome nasceu");
    dormir();
  }

  void dormir() {
    print("$nome está dormindo");
  }

  void niver() {
    idade++;
  }
}

void main() {
  Pessoa pessoa = Pessoa("Joao", 30, 1.68);

  Pessoa pessoa2 = Pessoa("Paulo", 35, 1.68);

  print("nome pessoa: ${pessoa.nome}");
  print("nome pessoa2: ${pessoa2.nome}");

  print("idade pessoa: ${pessoa.idade}");
  pessoa.niver();
  print("pessoa fez aniversario sua idade agora é ${pessoa.idade}");

  pessoa.dormir();
  print("");
  print("===============================================");
  print("");

  Pessoa nene = Pessoa.nascer("Enzo", 0.30);

  print("nome: ${nene.nome}");
  print("idade: ${nene.altura}");
}
