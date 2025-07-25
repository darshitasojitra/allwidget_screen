import 'package:flutter/material.dart';

import 'homepage.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? value=false;
  bool? value1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Checkbox_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Algorithm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    SizedBox(height: 20,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Library Implementation Of Searching Algorithm:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
        SizedBox(width: 10,),
        Checkbox(value: value, onChanged: (bool? newvalue){
          setState(() {
            value=newvalue;
          });
        }),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Library Implementation Of Searching Algorithm:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
        SizedBox(width: 10,),
        Checkbox(value: value1, onChanged: (bool? newvalue){
          setState(() {
            value1=newvalue;
          });
        })
      ],
    )
  ],
),
    );
  }
}
