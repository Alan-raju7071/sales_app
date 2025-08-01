

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/sales'), child: Text('Sales')),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/profile'), child: Text('Profile')),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/filters'), child: Text('Filters')),
          ],
        ),
      ),
    );
  }
}