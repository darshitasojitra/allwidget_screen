import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

import 'Basic Lists_widget.dart';
import 'Grid_list_widget.dart';
import 'Horizontal_List_Widget.dart';
import 'LongLists_Widget.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({super.key});

  @override
  State<ListviewWidget> createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("ListView_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicListsWidget()));
      },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Basic Lists",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
        ),
      ),
    ),
    SizedBox(height: 20,),
    Center(
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LonglistsWidget()));
      },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Long Lists",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
        ),
      ),
    ),
    SizedBox(height: 20,),
    Center(
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>GridListWidget()));
      },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Grid Lists",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
        ),
      ),
    ),
    SizedBox(height: 20,),
    Center(
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HorizontalListWidget()));
      },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("HorizontalList",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
        ),
      ),
    )
  ],
),
    );
  }
}
