import 'package:flutter/material.dart';
import 'package:mercado/model/produto.dart';

class ProdutoController extends ChangeNotifier{

  double getPreco(Produto produto){
    return produto.quantidade * produto.unidade;
  }

  void aumentarQuantidade(Produto produto){
    produto.quantidade++;
    produto.preco = getPreco(produto);
    notifyListeners();
  }

  void diminuirQuantidade(Produto produto){
    if (produto.quantidade > 1)
    {
      produto.quantidade--;
      produto.preco = getPreco(produto);
      notifyListeners();
    }
  }
}