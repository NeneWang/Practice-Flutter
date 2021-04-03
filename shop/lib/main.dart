import 'package:flutter/material.dart';
import 'package:shop/screens/product_detail_screen.dart';
import 'screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewScreen(),
      routes: {ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()},
    );
  }
}
