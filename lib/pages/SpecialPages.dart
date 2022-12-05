import 'package:flutter/material.dart';

class Special extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Offers"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        // padding: EdgeInsets.only(left: 10, top: 10, right: 15),
                        // width: 380,
                        height: 170,
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
                                Container(
                                  child: Row (
                                    children: [
                                      Container(
                                        child: Row(
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
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset('images/gheSofa_1.png',height: 190,),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                // padding: EdgeInsets.only(left: 10, top: 10, right: 15),
                // width: 380,
                height: 170,
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
                        Container(
                          child: Row (
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                                            child: Row(
                                              children: [
                                                Text("15%", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                Text("Weenkends Deals",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset('images/gheSofa_5.png',height: 190,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                // padding: EdgeInsets.only(left: 10, top: 10, right: 15),
                // width: 380,
                height: 170,
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
                        Container(
                          child: Row (
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                                            child: Row(
                                              children: [
                                                Text("30%", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            child: Row(
                                              children: [
                                                Text("New Arrivals!",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset('images/gheSofa_2.png',height: 190,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                // padding: EdgeInsets.only(left: 10, top: 10, right: 15),
                // width: 380,
                height: 170,
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
                        Container(
                          child: Row (
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                                            child: Row(
                                              children: [
                                                Text("20%", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                            child: Row(
                                              children: [
                                                Text("Black Friday",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 190,
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                                                  width: 165,
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
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.asset('images/gheSofa_3.png',height: 190,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

}