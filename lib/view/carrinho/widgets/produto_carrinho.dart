import 'package:flutter/material.dart';
import 'package:mercado/controller/carrinho_controller.dart';
import 'package:mercado/controller/produto_controller.dart';
import 'package:mercado/model/produto.dart';
import 'package:provider/provider.dart';

class ProdutoCarrinho extends StatefulWidget {
  const ProdutoCarrinho({super.key, required this.produto});

  final Produto produto;

  @override
  State<ProdutoCarrinho> createState() => _ProdutoCarrinhoState();
}

class _ProdutoCarrinhoState extends State<ProdutoCarrinho> {
  late CarrinhoController carrinhoController;
  late ProdutoController produtoController;

  @override
  Widget build(BuildContext context) {
    carrinhoController = Provider.of<CarrinhoController>(context);
    produtoController = Provider.of<ProdutoController>(context);

    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.02),border: Border(bottom: BorderSide(width: 2, color: Colors.black26))),
      margin: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Text(widget.produto.nome, style: const TextStyle(fontSize: 20)),
          Row(
            children: [
              IconButton(onPressed: () {produtoController.diminuirQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_left)),
              Text(
                widget.produto.quantidade.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              IconButton(onPressed: () {produtoController.aumentarQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_right))
            ],
          )
        ]),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.produto.preco.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
                onPressed: () {carrinhoController.removeProduto(widget.produto);},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ),
      ]),
    );
  }
}
