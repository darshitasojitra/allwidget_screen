import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

class GridviewBuilderWidget extends StatefulWidget {
  const GridviewBuilderWidget({super.key});

  @override
  State<GridviewBuilderWidget> createState() => _GridviewBuilderWidgetState();
}

class _GridviewBuilderWidgetState extends State<GridviewBuilderWidget> {
  List<String>images=[
    "assets/images/AKDM-04-1-Copy.jpg",
    "assets/images/img2.jpg",
    "assets/images/AKDM-04-1-Copy.jpg",
    "assets/images/img2.jpg",
    "assets/images/AKDM-04-1-Copy.jpg",
    "assets/images/img2.jpg",
    "assets/images/AKDM-04-1-Copy.jpg",
    "assets/images/img2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("GridView_widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15
          ),
              itemCount: 8,
              itemBuilder:(BuildContext context,int index){
            return Image.asset(images[index]);
              } ),
        ),
      ),

    );
  }
}
