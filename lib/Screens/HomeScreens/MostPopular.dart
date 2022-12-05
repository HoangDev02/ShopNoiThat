import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Container(
            margin:const EdgeInsets.only(left: 30, top: 8, right: 20),
            padding: EdgeInsets.all(2.0),
            child: Row(
              children: [
                Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                SizedBox(
                  width: 140,
                ),
                Expanded(
                    child:InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'special');
                      },
                    child: Container(
                      child: Text("See all", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                ),),)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, top: 5, right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'special');
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('ALL',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sofa',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Chari',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Table',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Vase',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Other',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(3, 10, 0, 20),
                          width: 165,
                          height: 160,
                          // color: Colors.tealAccent[400],
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:<Widget> [
                              Stack(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(context, 'productDetail');
                                                },
                                                child:Image.asset('images/ghe_2.png'),),
                                            )
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
                          margin: const EdgeInsets.fromLTRB(35, 10, 0, 20),
                          width: 165,
                          height: 160,
                          // color: Colors.tealAccent[400],
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:<Widget> [
                              Stack(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image.asset('images/gheSofa_1.png'),
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
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("Foam Padded chair", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Container(
                                // padding: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Icon(Icons.favorite),
                                  Text("4.5 | "),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                                          child:Text("8,374 Sold"),
                                        )
                                      ],
                                    ),
                                  )
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
          )
        ],
      ),
    );
  }
}