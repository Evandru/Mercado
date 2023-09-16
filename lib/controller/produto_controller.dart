import 'package:mercado/model/produto.dart';

class ProdutoController{
  late Produto produto;
  
  double getPreco(Produto produto){
    return produto.quantidade * produto.unidade;
  }

  void aumentarQuantidade(Produto produto){
    produto.quantidade++;
  }

  void diminuirQuantidade(Produto produto){
    if (produto.quantidade > 1)
    {
      produto.quantidade--;
    }
  }
}