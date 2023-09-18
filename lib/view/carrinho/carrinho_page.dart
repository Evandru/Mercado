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
            decoration: BoxDecoration(
              color: Colors.green[100],
              border: const Border(top: BorderSide(width: 1)),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text("Total: ${carrinhoController.carrinho.valorTotal.toStringAsFixed(2)}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ),
          Container(
            color: Colors.green[100],
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 15),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Finalizar"),
                    content: const Text("Deseja finalizar a compra?"),
                    actions: [
                      OutlinedButton(
                        onPressed: () { Navigator.of(context).pop(); },
                         child: const Text("Não"),
                      ),
                      OutlinedButton(
                        onPressed: () { 
                          carrinhoController.clear();
                          Navigator.of(context).pushReplacementNamed('/'); 
                        },
                        child: const Text("Sim"),
                      )
                    ],
                  ),
                  barrierDismissible: false,
                );
              },
              child: const Text("Finalizar Compra",
                  style: TextStyle(fontSize: 25)),
            ),
          )
        ],
      ),
    );
  }
}
