import 'package:flutter/material.dart';
import 'package:mercado/controller/carrinho_controller.dart';
import 'package:mercado/controller/produto_controller.dart';
import 'package:mercado/model/produto.dart';
import 'package:mercado/view/carrinho/widgets/produto_carrinho.dart';
import 'package:provider/provider.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({super.key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  late CarrinhoController carrinhoController;
  late ProdutoController produtoController;

  @override
  Widget build(BuildContext context) {
    carrinhoController = Provider.of<CarrinhoController>(context);
    produtoController = Provider.of<ProdutoController>(context);
    carrinhoController.getValorTotal();
  
    return Scaffold(
      appBar: AppBar( title: const Text("Carrinho"), centerTitle: true,),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                
                if(carrinhoController.carrinho.listaProdutos.isEmpty)
                  Center(child: Container(height: 200, alignment: Alignment.center,child: const Text("Carrinho Vazio", style: TextStyle(color: Colors.black54, fontSize: 20))))
                else
                  for (Produto produto in carrinhoController.carrinho.listaProdutos)
                    ProdutoCarrinho(produto: produto)

              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              border: Border(top: BorderSide(width: 2)),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text("Total: ${carrinhoController.carrinho.valorTotal.toStringAsFixed(2)}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
          ),
          Container(
            // decoration: const BoxDecoration(
            //   color: const Color.fromRGBO(0, 255, 0, 0.3),
               color: Colors.black12,
            // ),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 15),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Finalizar Compra",
                  style: TextStyle(fontSize: 25)),
            ),
          )
        ],
      ),
    );
  }
}
