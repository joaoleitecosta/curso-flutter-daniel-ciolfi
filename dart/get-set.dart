class Pessoa {
  String nome;
  int _idade;
  double _altura;

  Pessoa(this.nome, this._idade, this._altura);

  Pessoa.nascer(this.nome, this._altura) {
    _idade = 0;
    print("$nome nasceu");
    dormir();
  }

  void dormir() {
    print("$nome está dormindo");
  }

  void niver() {
    _idade++;
  }

  int get idade {
    return _idade;
  }

  //double get altura {
  //  return _altura;
  // }

  double get altura => _altura;

  set altura(double altura) {
    if (altura > 0 && altura < 3.00) {
      _altura = altura;
    }
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

  nene.altura = 13.00;

  print(nene.altura);
}
