import 'package:flutter/material.dart';

import 'Button_Widget.dart';
import 'homepage.dart';

class ButtonList extends StatefulWidget {
  const ButtonList({super.key});

  @override
  State<ButtonList> createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Button_List",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context)=>[
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup1")
                  ],
                )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup2")
                  ],
                )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup3")
                  ],
                )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup4")
                  ],
                )),
              ])
        ],
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Elevated Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),
        Center(child: Text("InkWell Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),
        Center(child: Text("Icon Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),
        Center(child: Text("Outline Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),
        Center(child: Text("Button bar",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),

        Center(child: Text("PopupMenu Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),

        Center(child: Text("Floating Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),)),
        SizedBox(height: 20,),

        Center(child: Text("Drop Down Button",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),))

      ],
    ),
    );
  }
}
