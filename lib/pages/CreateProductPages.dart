
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class CreateProduct extends StatelessWidget{
  final controllerName = TextEditingController();
  final controllerDescription = TextEditingController();
  final controllerImg = TextEditingController();
  final controllerprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("product"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children:<Widget> [
          TextField(
            controller: controllerName,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name',
            ),
          ),
          TextField(
            controller: controllerDescription,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'description',
            ),
          ),
          TextField(
            controller: controllerImg,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'img',
            ),
          ),
          TextField(
            controller: controllerprice,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'price',
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            child: Text('create'),
            onPressed: () {
              final product = Product(name: controllerName.text, description: controllerDescription.text, img: controllerImg.text, price: controllerprice.text);
              createProduct(product);
              Navigator.pop(context);
            },
          ),

        ],
      ),

    );
  }
  Future createProduct(Product product) async{
    final docProduct  = FirebaseFirestore.instance.collection("products").doc();
    product.id = docProduct.id;
    final json = product.toJson();
    await docProduct.set(json);
  }

}