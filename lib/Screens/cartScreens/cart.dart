
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            padding: EdgeInsets.all(20),
            height: 150,
            width: 331,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset('images/gheSofa_1.png'),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Lawson Chair", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child:  IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline), color: Colors.black,),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Blue Grey")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text("120.00"),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  height: 30,
                                  width: 105,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        color: Colors.black,
                                        onPressed: () {},
                                        icon: const Icon(
                                          CupertinoIcons.minus,
                                          size: 15,
                                        ),
                                      ),
                                      Text("1"),
                                      IconButton(
                                        color: Colors.black,
                                        onPressed: () {},
                                        icon: const Icon(
                                          CupertinoIcons.add,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )

                              ),
                            ],
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.all(20),
            height: 150,
            width: 331,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset('images/gheSofa_1.png'),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Lawson Chair", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child:  IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline), color: Colors.black,),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Blue Grey")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text("120.00"),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                  height: 30,
                                  width: 105,
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        color: Colors.black,
                                        onPressed: () {},
                                        icon: const Icon(
                                          CupertinoIcons.minus,
                                          size: 15,
                                        ),
                                      ),
                                      Text("1"),
                                      IconButton(
                                        color: Colors.black,
                                        onPressed: () {},
                                        icon: const Icon(
                                          CupertinoIcons.add,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )

                              ),
                            ],
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // Stack(
          //   children: [
          //
          //   ],
          // )
        ],
      ),
    );
  }
}