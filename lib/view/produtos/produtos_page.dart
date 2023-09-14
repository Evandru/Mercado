import 'package:flutter/material.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(crossAxisCount: 2, children: const [
        Product(title: "Fruta", valor: 12.3),
        Product(title: "Pão", valor: 12.3),
        Product(title: "Celular", valor: 12.3),
        Product(title: "Fogão", valor: 12.3),
        Product(title: "Carro", valor: 12.3),
        Product(title: "Miojo", valor: 12.3),
      ]),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key, required this.title, required this.valor});

  final String title;
  final double valor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 35,
                )),
            SizedBox(
              width: double.infinity,
              child: Text(
                "$valor",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: const TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Quantidade",
                hintStyle: TextStyle(),
                // -> controller AQUI!
              )),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith((states) =>
                        const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30))),
                child: const Text(
                  "Adicionar ao Carrinho",
                  style: TextStyle(fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
