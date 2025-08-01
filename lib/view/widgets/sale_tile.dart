

import 'package:flutter/material.dart';

class SaleTile extends StatelessWidget {
  final String title;
  final double price;

  const SaleTile({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text('Price: \$${price.toStringAsFixed(2)}'),
    );
  }
}