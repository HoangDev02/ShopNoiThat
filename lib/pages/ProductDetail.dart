import 'package:flutter/material.dart';
import 'package:shopnoithat/Screens/productDetailScreens/Detail.dart';

 class ProductDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Column(
          children: [
           Detail()
          ],
        ),
      ),
    );
  }

 }