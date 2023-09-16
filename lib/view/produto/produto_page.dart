import 'package:flutter/material.dart';
import 'package:mercado/model/produto.dart';
import 'package:mercado/view/shared/widgets/custom_appbar.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({super.key, required this.produto});

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Center(
                child: Text(produto.nome,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 50))),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Disponível',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20)),
                    Text(produto.unidade.toString(),
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
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_left)),
                const Text('12', style: TextStyle(fontSize: 18),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_right))
              ],
            ),
            ElevatedButton(
                onPressed: () {},
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
