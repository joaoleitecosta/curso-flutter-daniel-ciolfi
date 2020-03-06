class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

void main() {
  List<String> nomes = ["Daniel", "Mari", "Thiago"];

  nomes.add("Joao");

  print(nomes);

  print(nomes.length);

  nomes.removeAt(1);

  print(nomes);

  nomes.removeLast();

  print(nomes);

  nomes.insert(0, "Joao");

  print(nomes);

  print(nomes.contains("Joao"));

  List<Pessoa> pessoas = List();

  Pessoa pessoa1 = Pessoa("Joao", 20);
  Pessoa pessoa2 = Pessoa("Paulo", 30);

  pessoas.add(pessoa1);
  pessoas.add(pessoa2);

  pessoas.forEach((pessoa) => print(pessoa.nome));

  for (Pessoa p in pessoas) {
    print(p.nome);
  }
}
