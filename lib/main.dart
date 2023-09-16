import 'package:flutter/material.dart';
import 'package:mercado/view/carrinho/carrinho_page.dart';
import 'package:mercado/view/home/home_page.dart';
import 'package:mercado/view/produtos/produtos_page.dart';

void main() {
  runApp(
    const MyAppWidget()
  );
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mercado",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/produtos': (context) => const ProdutosPage(),
        // '/produto': (context) => ProdutoPage(),
        '/carrinho': (context) => const CarrinhoPage()
      },
    );
  }
}
