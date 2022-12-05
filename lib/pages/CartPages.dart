import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnoithat/Screens/cartScreens/cart.dart';

class CartPages extends StatelessWidget{
  // final int _while10 = F3F3F3FF;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 243, 243, 243),
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cart(),
          ],
        ),
      ),
    );
  }
}
