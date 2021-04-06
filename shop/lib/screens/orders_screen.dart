import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(itemBuilder: orderData.orders.length, itemBuilder: (ctx, i) => ),
    );
  }
}
