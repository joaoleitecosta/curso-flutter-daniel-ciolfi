class InfoPessoa {
  int idade;

  InfoPessoa(this.idade);
}

void main() {
  Map<int, String> ddds = Map();

  ddds[11] = "São Paulo";
  ddds[19] = "Campinas";
  ddds[98] = "Maranhão";

  print(ddds);
  print(ddds.keys);
  print(ddds.values);

  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Joao";
  pessoa["idade"] = 29;
  pessoa["peso"] = 80.88;

  Map<String, InfoPessoa> pessoas = Map();
  pessoas["Joao"] = InfoPessoa(30);
  pessoas["Paulo"] = InfoPessoa(40);
}
