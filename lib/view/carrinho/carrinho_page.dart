import 'package:flutter/material.dart';
import 'package:mercado/view/carrinho/widgets/produto_carrinho.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Carrinho"), centerTitle: true,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                if(index < 10){
                  return const ProdutoCarrinho();
                }
                return null;
              },
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
              border: Border(top: BorderSide(width: 2)),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: const Text('Total: 1234.56', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
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
