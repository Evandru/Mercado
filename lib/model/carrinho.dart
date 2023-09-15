import 'package:mercado/model/produto.dart';

class Carrinho{

  late final List<Produto> carrinho;

  void add(Produto produto){
    carrinho.add(produto);
  }
}