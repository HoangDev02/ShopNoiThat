import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpecialOffers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     child: Column(
      children: [
        Container(
          margin:const EdgeInsets.only(left: 30, top: 20, right: 20),
          child: Row(
            children: [
              Text("Special Offers",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              SizedBox(
                width: 130,
              ),
              Expanded(
                  child: Text("See All", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
              ),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            // padding: EdgeInsets.only(left: 10, top: 10, right: 15),
            width: 400,
            height: 200,
            // color: Colors.tealAccent[400],
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children:<Widget> [
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                                child: Row(
                                  children: [
                                    Text("25%", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Text("Today Special!",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                      width: 160,
                                      child: Text("Get discount for every orther. only vaild for today",style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset('images/gheSofa_1.png',height: 200,width: 180,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          // padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'createproduct');
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event_seat, color: Colors.black, size: 30,),
                          ],
                        ),
                      ),

                    ],
                  ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'products');

                  },
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chair_alt_rounded,color: Colors.black, size: 30,),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.table_chart,color: Colors.black, size: 30),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.kitchen,color: Colors.black, size: 30),
                          ],
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          padding: EdgeInsets.only(left: 0, top: 10, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sofa', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 0, right: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('chair',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 0, right: 0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('table',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 7, top: 0, right: 0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kitchen',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          // padding: EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.event_seat, color: Colors.black, size: 30,),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              InkWell(
                  onTap: () {},
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.train,color: Colors.black, size: 30,),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.adjust,color: Colors.black, size: 30),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.app_registration,color: Colors.black, size: 30),
                          ],
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          padding: EdgeInsets.only(left: 0, top: 10, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lamp', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 0, right: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cupboard',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 0, right: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('vase',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 7, top: 0, right: 0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Others',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ),

      ], 
     ),
    );
  }

}