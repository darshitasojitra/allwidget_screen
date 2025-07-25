import 'package:flutter/material.dart';

import 'ListView_Widget.dart';

class HorizontalListWidget extends StatefulWidget {
  const HorizontalListWidget({super.key});

  @override
  State<HorizontalListWidget> createState() => _HorizontalListWidgetState();
}

class _HorizontalListWidgetState extends State<HorizontalListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewWidget()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Horizontal_List_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Container(
    height: 150,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(width: 160, color: Colors.red),
        Container(width: 160, color: Colors.grey),
        Container(width: 160, color: Colors.black),
        Container(width: 160, color: Colors.teal),
        Container(width: 160, color: Colors.orange),
      ],
    ),
  ),
),
    );
  }
}
