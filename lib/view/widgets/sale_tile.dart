import 'package:flutter/material.dart';

class SaleTile extends StatelessWidget {
  final String title;
  final double price;
  final String? image;

  SaleTile({required this.title, required this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image != null ? Image.network(image!, width: 50, height: 50) : null,
      title: Text(title),
      subtitle: Text('\₹${price.toStringAsFixed(2)}'),
    );
  }
}
