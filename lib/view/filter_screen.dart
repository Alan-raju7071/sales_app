

import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters')),
      body: Column(
        children: [
          CheckboxListTile(
            value: false,
            onChanged: (_) {},
            title: Text('Filter Option'),
          ),
          DropdownButton<String>(
            value: 'Option 1',
            items: ['Option 1', 'Option 2']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }
}