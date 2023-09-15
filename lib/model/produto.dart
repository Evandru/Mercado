class Produto{
  Produto({required this.nome, required this.quantidade, required this.unidade });
  
  String? nome;
  int quantidade = 1;
  double unidade = 0;

  void aumentarQuantidade(){
    quantidade++;
  }

  double getValor(){
    return quantidade * unidade;
  }
}