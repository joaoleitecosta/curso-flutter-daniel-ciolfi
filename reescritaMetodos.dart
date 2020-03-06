class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void comer() => print("$nome comeu");

  void fazerSom() => print("$nome fez algum som");
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);

  void brincar() {
    fofura += 10;
    print("$nome aumentou a fofura para $fofura");
  }

  @override
  void fazerSom() {
    print("$nome fez au au");
  }

  @override
  String toString() => "Cachorro Nome: $nome, Peso: $peso, Fofura: $fofura";
}

class Gato extends Animal {
  Gato(String nome, double peso) : super(nome, peso);

  bool estaAmigavel() => true;

  @override
  void fazerSom() {
    print("$nome fez miau");
  }
}

void main() {
  Cachorro cachorro = Cachorro("Scoob", 10.00, 10);
  Gato gato = Gato("xande", 5.00);

  print("cachorro: ${cachorro.nome}, ${cachorro.peso}, ${cachorro.fofura}");
  cachorro.brincar();
  cachorro.comer();
  cachorro.fazerSom();

  print("gato: ${gato.nome}, peso: ${gato.peso}");
  gato.comer();
  gato.fazerSom();
  print("gato está amigavel? ${gato.estaAmigavel()}");

  print(cachorro);
}
