void main() {
  printIntro();

  calculadora(10.0, 2.0);

  int result = multiplicacao(2, 5);
  print(result);

  double resultRaio = calcAreaCirculo(10.0);
  print(resultRaio);

  criarBotao("enviar", botaoCriado, cor: "black");

  criarBotao("enviar", () {
    print("botao criado por funcao anonima!");
  }, cor: "black");
}

void botaoCriado() {
  print("botao criado");
}

void printIntro() {
  print("teste função");
}

void calculadora(double a, double b) {
  double resultado = a + b;

  print(resultado);
}

int multiplicacao(int x, int y) {
  return x * y;
}

double calcAreaCirculo(double raio) => 3.14 * (raio * raio);

void criarBotao(String texto, Function criadoFunc,
    {String cor, double largura}) {
  print(texto);
  print(cor ?? "white");
  print(largura ?? 5.00);
  criadoFunc();
}
