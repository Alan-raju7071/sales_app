import 'package:flutter/material.dart';
import 'package:sales_app/view/dashboard_screen.dart';
import 'package:sales_app/view/filter_screen.dart';
import 'package:sales_app/view/login_screen.dart';
import 'package:sales_app/view/profile_screen.dart';
import 'package:sales_app/view/sale_list_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVC App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/sales': (context) => SaleListScreen(),
       // '/profile': (context) => ProfileScreen(),
        '/filters': (context) => FilterScreen(),
      },
    );
  }
}