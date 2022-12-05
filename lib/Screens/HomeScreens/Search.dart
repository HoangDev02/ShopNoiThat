import 'package:flutter/material.dart';


class Search extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget> [
          Container(
            margin:const EdgeInsets.only(left: 20, top: 8, right: 20),
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.search_sharp),
                        ),
                        suffixIcon:Padding(
                          padding: const EdgeInsets.all(20),
                          child: Icon(Icons.filter_list),
                        )
                    ),
                  ),
                  onChanged: () {},
                )
              ],
            ),
          )

        ],
      ),
    );
  }


}