import 'package:auto_size_text/auto_size_text.dart';
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
      decoration: BoxDecoration(
        color: Colors.lightGreen[50],
        border: const Border(
          bottom: BorderSide(
            width: 1, 
            color: Colors.black12
          )
        )
      ),
      margin: const EdgeInsets.all(5),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          AutoSizeText(widget.produto.nome, style: const TextStyle(fontSize: 20), maxLines: 1, wrapWords: false),
          Row(
            children: [
              IconButton(onPressed: () {produtoController.diminuirQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_left),
               color: widget.produto.quantidade==1 ? Colors.black12 : Colors.black
              ),
              Text(
                widget.produto.quantidade.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              IconButton(onPressed: () {produtoController.aumentarQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_right),
                color: widget.produto.quantidade==100 ? Colors.black12 : Colors.black
              )
            ],
          )
        ]),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AutoSizeText(
              widget.produto.preco.toStringAsFixed(2),
              minFontSize: 15,
              maxLines: 1,
              wrapWords: false,
              style: const TextStyle(fontSize: 20),
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
