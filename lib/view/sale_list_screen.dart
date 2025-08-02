

import 'package:flutter/material.dart';
import 'package:sales_app/controller/sale_controller.dart';
import 'package:sales_app/view/widgets/sale_tile.dart';

class SaleListScreen extends StatefulWidget {
  @override
  _SaleListScreenState createState() => _SaleListScreenState();
}

class _SaleListScreenState extends State<SaleListScreen> {
  final _controller = SaleController();
  List<dynamic> _sales = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() async {
    final sales = await _controller.fetchSales();
    setState(() => _sales = sales);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sales List')),
      body: ListView.builder(
        itemCount: _sales.length,
        itemBuilder: (_, i) => SaleTile(
  title: _sales[i]['title'] ?? '',
  price: double.tryParse(_sales[i]['price'].toString()) ?? 0,
  image: _sales[i]['image'],
),

      ),
    );
  }
}