import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnoithat/pages/CartPages.dart';
import 'package:shopnoithat/pages/HomePages.dart';
import 'package:shopnoithat/pages/ProductDetail.dart';
import 'package:shopnoithat/pages/SpecialPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xffffffff),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePages(),
        'special': (context) => Special(),
        'productDetail': (context) => ProductDetail(),
        'cart': (context) => CartPages(),
      },
    );
  }
}


