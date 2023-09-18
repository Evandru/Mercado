import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: BoxDecoration(color: Colors.green[600]),
              child: const Text(
                "Menu",
                style: TextStyle(fontSize:25, color: Colors.white), 
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.green[300]!))
            ),
            child: const Text(
              "Home Hipotético",
              style: TextStyle(fontSize: 20)
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.green[300]!))
            ),
            child: const Text(
              "Sobre Hipotético",
              style: TextStyle(fontSize: 20)
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.green[300]!))
            ),
            child: const Text(
              "Contato Hipotético",
              style: TextStyle(fontSize: 20)
            )
          )
        ],
      ),
    );
  }
}
