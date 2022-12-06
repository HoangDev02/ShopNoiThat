import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../provider/user_provider.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
         appBar: AppBar(
           title: Text('Profile'),
         ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                padding: EdgeInsets.only(left: 0, top: 20),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 260,
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

                  ],
                ),
              ),
              Container(
                child: Column(
                  children:  [
                    Text("${context.watch<UserProvider>().user?.email}",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('+1101212542124'),
                  ],
                ),
              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Security',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),    Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Darkmode',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              ),    Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Help Center',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              )
              ,
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Invite Friend',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              ),
              Container(
                width:  double.infinity,
                height: 50,

                decoration:BoxDecoration(
                  color:  Colors.white,
                  borderRadius:  BorderRadius.circular(12),

                ) ,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {
                       showModalBottomSheet(
                           shape: const RoundedRectangleBorder(
                               borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                           ),
                           context: context, builder: (BuildContext content){
                         return Container(
                           height: 200,
                           color: Colors.white,
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children:  [
                               ElevatedButton(onPressed: () {}, child: Text('Cancel')),
                                 InkWell(
                                   child: Padding(padding: EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 5),child: Text("Logout"),),
                                   onTap: ()=>{
                                     print("Logout"),
                                     context.read<UserProvider>().logout(),
                                     Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => const MyApp()),
                                     )
                                   },
                                 )
                          ]
                           ),

                         );
                       });
                      },
                      icon: const Icon(
                        Icons.navigate_next,
                      ),
                    ),
                  ],
                ),



              )


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
                  onPressed: () { Navigator.pushNamed(context, '/');},
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
                  onPressed: (
                      ) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
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