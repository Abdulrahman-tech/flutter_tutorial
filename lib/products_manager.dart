import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application/product_control.dart';
import 'package:flutter_application/products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProject;
  ProductsManager({this.startingProject = 'Sweet Tester'});
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProject);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductsManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
