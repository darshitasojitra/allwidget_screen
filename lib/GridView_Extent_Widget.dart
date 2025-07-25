import 'package:flutter/material.dart';

import 'GridView_Widget.dart';

class GridviewExtentWidget extends StatefulWidget {
  const GridviewExtentWidget({super.key});

  @override
  State<GridviewExtentWidget> createState() => _GridviewExtentWidgetState();
}

class _GridviewExtentWidgetState extends State<GridviewExtentWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridviewWidget()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "GridView_Extent_Widget",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
    body:
      Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 250),
        child: GridView.extent(
        maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(child: const Text('First', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.yellow,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(child: const Text('Second', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.blue,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(child: const Text('Third', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.yellow,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(child: const Text('Four', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.blue,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(child: const Text('Fifth', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.yellow,
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(child: const Text('Six', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          color: Colors.blue,
        )
            ],),
      ),
    );
  }
}
