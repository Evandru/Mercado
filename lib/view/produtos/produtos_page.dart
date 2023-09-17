import 'package:flutter/material.dart';
import 'package:mercado/controller/produto_controller.dart';
import 'package:mercado/model/produto.dart';
import 'package:mercado/view/produtos/widgets/produto_widget.dart';
import 'package:mercado/view/shared/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

class ProdutosPage extends StatefulWidget {
  const ProdutosPage({super.key});

  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  late ProdutoController produtoController;

  @override
  Widget build(BuildContext context) {
    produtoController = Provider.of<ProdutoController>(context);
    List<Produto> listaProdutos = produtoController.mockProdutos();

    return Scaffold(
      appBar: customAppBarWithTitle(context, "Produtos"),
      body: GridView.count(crossAxisCount: 2, children: [

        for(Produto produto in listaProdutos)
          ProdutoWidget(produto: produto)
        
      ]),
    );
  }
}
