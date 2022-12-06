import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopnoithat/pages/CartPages.dart';
import 'package:shopnoithat/pages/CreateProductPages.dart';
import 'package:shopnoithat/pages/HomePages.dart';
import 'package:shopnoithat/pages/ProductDetail.dart';
import 'package:shopnoithat/pages/Products.dart';
import 'package:shopnoithat/pages/Profile.dart';
import 'package:shopnoithat/pages/SpecialPages.dart';
import 'package:shopnoithat/pages/auth/login.dart';
import 'package:shopnoithat/provider/user_provider.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
      home: const  LoginScreen(),
      // routes: {
      //   '/': (context) => HomePages(),
      //   'special': (context) => Special(),
      //   'productDetail': (context) => ProductDetail(),
      //   'cart': (context) => CartPages(),
      //   'createproduct': (context) => CreateProduct(),
      //   'products': (context) => Products(),
      //   'profile': (context) => Profile(),
      // },
    );
  }
}


