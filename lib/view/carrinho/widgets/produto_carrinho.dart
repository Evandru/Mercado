import 'package:flutter/material.dart';

class ProdutoCarrinho extends StatelessWidget {
  const ProdutoCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.02),border: Border(bottom: BorderSide(width: 2, color: Colors.black26))),
      margin: const EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          const Text("Produto", style: TextStyle(fontSize: 20)),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_left)),
              const Text(
                '12',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right))
            ],
          )
        ]),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                '12.3',
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
                onPressed: () {},
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
