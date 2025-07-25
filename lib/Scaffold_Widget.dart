import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

drawer: Drawer(

  child: ListView(
    children:<Widget> [
      DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          child: Row(
            children: [
              Text("Dashboard",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          )),
      ListTile(
        leading: Icon(Icons.add),
        title: Text("Add"),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
      ),
      ListTile(
        leading: Icon(Icons.camera),
        title: Text("Camera"),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Person"),
      ),
      ListTile(
        leading: Icon(Icons.calendar_month),
        title: Text("Calendar"),
      )
    ],
  ),
),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Scaffold_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.person,color: Colors.white,),
         SizedBox(width: 10,),
          Icon(Icons.email,color: Colors.white,)
        ],
      ),
      backgroundColor: Colors.blue.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Scaffold_widget",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 22),)),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
    );
  }
}
