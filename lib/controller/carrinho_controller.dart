import 'package:flutter/material.dart';
import 'package:mercado/model/carrinho.dart';
import 'package:mercado/model/produto.dart';

class CarrinhoController extends ChangeNotifier{
  CarrinhoController({required this.carrinho});

  final Carrinho carrinho;
  
  void getValorTotal(){
    double valor = 0;
    for (Produto produto in carrinho.listaProdutos){
      valor += produto.preco;
    }
    carrinho.valorTotal = valor;
  }

  void addProduto(Produto produto){
    carrinho.listaProdutos.add(produto);
    getValorTotal();
    notifyListeners();
  }

  void removeProduto(Produto produto){
    carrinho.listaProdutos.remove(produto);
    getValorTotal();
    notifyListeners();
  }
}