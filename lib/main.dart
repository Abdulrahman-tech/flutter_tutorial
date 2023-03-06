import 'package:flutter/material.dart';
import 'package:flutter_application/products_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.orange,
            accentColor: Colors.deepPurple),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('EasyList'),
          ),
          body: ProductsManager(startingProject: 'Food Tester'),
        ));
  }
}
