import 'package:flutter/material.dart';
import 'package:shopapp/providers/orders.dart' show Orders;
import 'package:provider/provider.dart';
import 'package:shopapp/widget/app_drawer.dart';
import 'package:shopapp/widget/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
