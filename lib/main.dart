import 'package:flutter/material.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import 'package:shopapp/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';
import 'providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
//      create: (BuildContext context) { Products(); },
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
//
//class MyHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('My Shop'),
//      ),
//      body: Center(
//        child: Text('Hello Baw'),
//      ),
//    );
//  }
//}
