
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/product.dart';

class Products extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("all product"),
      ),
      body: StreamBuilder<List<Product>>(
          stream: readProduct(),
          builder: (context, snapshot) {
            if(snapshot.hasError){
              return Text('Something went wrong!, ${snapshot.error}');
            }else if(snapshot.hasData) {
              final products = snapshot.data!;
              return ListView(
                children: products.map(buildProduct).toList(),
              );
            }else{
              return Center(child:CircularProgressIndicator());
            }
          }),
    );
  }
  Widget buildProduct (Product product) => ListTile(
    leading: CircleAvatar(child: Text('${product.img}'),),
    title: Text(product.name),
    subtitle: Text(product.price),
  );
  Stream<List<Product>> readProduct() =>
      FirebaseFirestore.instance.collection('products').snapshots().map((snapshot) => snapshot.docs.map((doc) => Product.fromJson(doc.data())).toList());

}