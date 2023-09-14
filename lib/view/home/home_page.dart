import 'package:flutter/material.dart';
import 'package:mercado/view/produtos/produtos_page.dart';
import 'package:mercado/view/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    ProdutosPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mercado",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag, size: 40))
        ],
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              child: const Center(
                child: Text("Compre Conosco",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/produtos');
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith<EdgeInsets>(
                        (states) => const EdgeInsets.all(30)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5);
                      } else {
                        return null;
                      }
                    })),
                child: const Text(
                  "Ver Produtos",
                  style: TextStyle(fontSize: 30),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Produtos',
          ),
        ],
      ),
      // -> CARRINHO: floatingActionButton: ,
    );
  }
}
