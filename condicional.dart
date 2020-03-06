
void main() {

  //Condicional IF
  double nota = 6.0;
  bool resultado = false;

  if (nota > 5.0) {
    resultado = true;
  }
​  
  String infor = resultado ? "Aprovado" : "Reprovado";
  print(infor);
​
  String nome = "joao";
​
  String inf = nome ?? "Não informado";
​
  print(inf);


  //switch
 String linguagem = "Dart";
  
  switch(linguagem) {
    case "Dart":
      print("Dart !!!");
      break;
    case "Java":
      print("Java");
      break;
    case "Swift":
      print("Swift");
      break;
    default:
      print("Linguagem não encontrada");
  }

}
​