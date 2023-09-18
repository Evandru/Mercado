import 'package:flutter/material.dart';
import 'package:mercado/controller/carrinho_controller.dart';
import 'package:mercado/controller/produto_controller.dart';
import 'package:mercado/model/produto.dart';
import 'package:mercado/view/shared/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({super.key, required this.produto});

  final Produto produto;

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {

  late CarrinhoController carrinhoController; 
  late ProdutoController produtoController;

  @override
  Widget build(BuildContext context) {
    carrinhoController = Provider.of<CarrinhoController>(context);
    produtoController = Provider.of<ProdutoController>(context);

    widget.produto.preco = produtoController.getPreco(widget.produto);

    return Scaffold(
      appBar: customAppBar(context),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Center(
                child: Text(widget.produto.nome,
                     textAlign: TextAlign.center,
                     style: const TextStyle(fontSize: 50, height: 1.1))),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Disponível',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20)),
                    Text(widget.produto.preco.toStringAsFixed(2),
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 30))
                  ]),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus purus augue, posuere et arcu a, vehicula efficitur dui. In euismod quis nibh id tempus. Donec interdum efficitur orci. Morbi efficitur eleifend turpis venenatis imperdiet. Vestibulum venenatis lacus at turpis vulputate"),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black12)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                IconButton(onPressed: (){produtoController.diminuirQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_left),
                  color: widget.produto.quantidade==1 ? Colors.black12 : Colors.black,
                  ),
                Text(widget.produto.quantidade.toString(), style: const TextStyle(fontSize: 18),),
                IconButton(onPressed: (){produtoController.aumentarQuantidade(widget.produto);}, icon: const Icon(Icons.arrow_right),
                  color: widget.produto.quantidade==100 ? Colors.black12 : Colors.black,
                  )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  carrinhoController.addProduto(widget.produto);
                  Navigator.of(context).pushNamed('/carrinho');
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith(
                        (states) => const EdgeInsets.all(10))),
                child: const Text(
                  "Adicionar ao Carrinho",
                  style: TextStyle(fontSize: 15),
                )),
          ]),
        ),
      ]),
    );
  }
}
