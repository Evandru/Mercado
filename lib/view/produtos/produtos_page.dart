import 'package:flutter/material.dart';
import 'package:mercado/view/produtos/widgets/produto_widget.dart';
import 'package:mercado/view/shared/widgets/custom_appbar.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithTitle(context, "Produtos"),
      body: GridView.count(crossAxisCount: 2, children: const [
        ProdutoWidget(nome: "Fruta", valor: 12.3),
        ProdutoWidget(nome: "Pão", valor: 12.3),
        ProdutoWidget(nome: "Celular", valor: 12.3),
        ProdutoWidget(nome: "Fogão", valor: 12.3),
        ProdutoWidget(nome: "Carro", valor: 12.3),
        ProdutoWidget(nome: "Miojo", valor: 12.3),
        ProdutoWidget(nome: "Cerveja", valor: 12.3),
        ProdutoWidget(nome: "Suco", valor: 12.3),
        ProdutoWidget(nome: "Teclado", valor: 12.3),
        ProdutoWidget(nome: "Televisão", valor: 12.3),
        ProdutoWidget(nome: "Computadores", valor: 12.3)
      ]),
    );
  }
}
