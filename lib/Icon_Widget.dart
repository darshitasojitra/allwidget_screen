import 'package:flutter/material.dart';

import 'homepage.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Icon_Button",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Icon(Icons.home,size: 70,color: Colors.white,),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Icon(Icons.search,size: 70,color: Colors.white,),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Icon(Icons.person,size: 70,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
