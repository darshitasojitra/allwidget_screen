import 'package:flutter/material.dart';

import 'homepage.dart';

class ProgressbarWidget extends StatefulWidget {
  const ProgressbarWidget({super.key});

  @override
  State<ProgressbarWidget> createState() => _ProgressbarWidgetState();
}

class _ProgressbarWidgetState extends State<ProgressbarWidget> {
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Progressbar_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  children: [
    isLoading? LinearProgressIndicator(
      color: Colors.red,
    ):Text("Linear Progress Indicator",style: TextStyle(color: Colors.blue,fontSize: 20),),
    Container(
      height: 650,
      width: 620,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        color: Colors.pinkAccent,
        backgroundColor: Colors.black,
      ),
    ),
    FloatingActionButton(
        child: Icon(Icons.add,size: 40,),
        onPressed: (){
      setState(() {
        isLoading=!isLoading;
      });
    })
  ],
),
    );
  }
}
