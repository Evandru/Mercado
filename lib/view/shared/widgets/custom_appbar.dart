import 'package:flutter/material.dart';

PreferredSizeWidget customAppBarWithTitle(BuildContext context, String text) {
  return AppBar(
    centerTitle: true,
    title: Text(text,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/carrinho');
          },
          icon: const Icon(Icons.shopping_bag, size: 40))
    ],
  );
}

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/carrinho');
          },
          icon: const Icon(Icons.shopping_bag, size: 40))
    ],
  );
}
