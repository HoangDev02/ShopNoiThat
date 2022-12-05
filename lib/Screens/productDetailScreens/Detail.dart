
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Container(
            width: 450,
            height: 280,
            decoration: const BoxDecoration(
              color: Colors.black12
            ),
            child: Image.asset('images/gheSofa_3.png'),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Text("Mid Century Sofa", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 50,
                        width: 60,
                      ),
                      Expanded(child: Image.asset('images/love.png', height: 30,)
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(17, 10, 0, 0),
                          child:  Text("9.742 Sold"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Image.asset('images/love.png', height: 30),
                      ),
                      Container(
                        child: Text("(6.573 reviews)"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),

                              child: Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                              ,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 390,
                              child:Text("Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut abore et view More", style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text("Color", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(15, 0,0, 0),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(15, 0,0, 0),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(15, 0,0, 0),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(15, 0,0, 0),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Row(
                    children: [
                      Text("Quantity",style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child:Text("Total price")
                            ),
                            Container(
                              child: Text("2800.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Row(
                              children: <Widget>[
                                Stack(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 230,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    Positioned(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: InkWell(
                                                child:  IconButton(
                                                  color: Colors.white,
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    CupertinoIcons.cart,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text("Add to cart",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white)),
                                            )
                                          ],
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}