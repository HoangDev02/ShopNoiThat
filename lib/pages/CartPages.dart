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
      bottomNavigationBar: AnimatedContainer(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        padding: const EdgeInsets.only(
          bottom: 8,
        ),
        duration: const Duration(
          milliseconds: 800,
        ),
        curve: Curves.easeInOutSine,
        // height: showAppBarBtn ? 65 : 0,
        child: BottomAppBar(
          notchMargin: 8.0,
          // shape: const CircularNotchedRectangle(
          //   borderRadius: const Radius.circular(40),
          // ),
          shape: const CircularNotchedRectangle(),
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bag,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'cart');
                },
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.briefcase,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.profile_circled,
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
