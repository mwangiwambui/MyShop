import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/widget/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductsGrid(),
    );
  }
}

