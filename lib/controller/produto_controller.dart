import 'package:flutter/material.dart';
import 'package:mercado/model/produto.dart';

class ProdutoController extends ChangeNotifier{

  double getPreco(Produto produto){
    return produto.quantidade * produto.unidade;
  }

  void aumentarQuantidade(Produto produto){
    if (produto.quantidade < 100)
    {
      produto.quantidade++;
      produto.preco = getPreco(produto);
      notifyListeners();
    }
  }

  void diminuirQuantidade(Produto produto){
    if (produto.quantidade > 1)
    {
      produto.quantidade--;
      produto.preco = getPreco(produto);
      notifyListeners();
    }
  }

  List<Produto> mockProdutos(){
    List<Produto> produtos = [
      Produto(nome: "Fruta", quantidade: 1, unidade: 3.99),
      Produto(nome: "Pão", quantidade: 1, unidade: 2.5),
      Produto(nome: "Celular", quantidade: 1, unidade: 1100.10),
      Produto(nome: "Fogão", quantidade: 1, unidade: 2000.51),
      Produto(nome: "Carro", quantidade: 1, unidade: 35000.00),
      Produto(nome: "Miojo", quantidade: 1, unidade: 5.40),
      Produto(nome: "Cerveja", quantidade: 1, unidade: 2.9),
      Produto(nome: "Suco", quantidade: 1, unidade: 1.0),
      Produto(nome: "Teclado", quantidade: 1, unidade: 249.99),
      Produto(nome: "Televisão", quantidade: 1, unidade: 1500.00),
      Produto(nome: "Computador", quantidade: 1, unidade: 5000.11),
      Produto(nome: "Contra Baixo", quantidade: 1, unidade: 1500.23),
      Produto(nome: "Guitarra", quantidade: 1, unidade: 1000.12),
      Produto(nome: "Bateria Eletronica", quantidade: 1, unidade: 6666.66),
    ];
    return produtos;
  }
}