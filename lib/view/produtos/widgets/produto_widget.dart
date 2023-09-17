import 'package:flutter/material.dart';
import 'package:mercado/model/produto.dart';
import 'package:mercado/view/produto/produto_page.dart';

class ProdutoWidget extends StatelessWidget {
  const ProdutoWidget({super.key, required this.produto});

  final Produto produto;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProdutoPage(produto: Produto(nome: produto.nome, quantidade: 1, unidade: produto.unidade),)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Card(
          child: Column(
            children: [
              Text(produto.nome,overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Text(
                  produto.unidade.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdutoPage(
                          produto: produto
                        )
                      )
                    );
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.all(10))),
                  child: const Text(
                    "Ver Detalhes",
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
