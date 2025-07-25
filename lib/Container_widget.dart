import 'package:flutter/material.dart';

import 'Appbar_Widget.dart';
import 'homepage.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Container_widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    offset: new Offset(5, 5)
                  )
                ]
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  border: Border.all(color: Colors.black),
                    gradient: LinearGradient(colors: [
                      Colors.purpleAccent.shade100,
                      Colors.lightGreenAccent.shade100,
                      Colors.red.shade100
                    ])
              ),
            ),
          ),
        ],
      )
    );
  }
}
