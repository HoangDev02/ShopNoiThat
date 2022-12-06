

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopnoithat/Screens/cartScreens/cart.dart';
import 'package:shopnoithat/pages/CartPages.dart';
import 'package:shopnoithat/pages/Profile.dart';

import '../Screens//HomeScreens/MostPopular.dart';
import '../Screens/HomeScreens/Search.dart';
import '../Screens/HomeScreens/SpecialOffers.dart';
import '../provider/user_provider.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePageState();

}
class _HomePageState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
      title: Row(
        children:<Widget> [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 17),
            padding: EdgeInsets.only(left: 0, top: 30),
            height: 100,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      margin:const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,  blurRadius: 20, color: Colors.black.withOpacity(0.1), offset: Offset(0,10)
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://img5.thuthuatphanmem.vn/uploads/2021/12/27/hinh-anh-cho-doi-dep-nhat_045114229.png'),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Good Morning", style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),),
                      Text("${context.watch<UserProvider>().user?.email}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Search(),
          SpecialOffers(),
          MostPopular()
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePages())
                  );
                },
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPages())
                  );
                },
                icon: const Icon(
                  CupertinoIcons.bag,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                },
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                },
                icon: const Icon(
                  CupertinoIcons.briefcase,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
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
