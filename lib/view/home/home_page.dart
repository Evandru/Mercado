import 'package:flutter/material.dart';
import 'package:mercado/view/shared/widgets/custom_appbar.dart';
import 'package:mercado/view/shared/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithTitle(context, "Mercado"),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              child: const Center(
                child: Text("Compre Conosco",
                    textAlign: TextAlign.center, 
                    style: TextStyle(fontSize: 60, height: 1, fontWeight: FontWeight.w100, fontStyle: FontStyle.italic)),
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
    );
  }
}
