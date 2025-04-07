import 'package:cafe_app_flutter/cart_page.dart';
import 'package:cafe_app_flutter/core/views/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'InriaSerif', // Added font family
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CartPage(),
    );
  }
}
