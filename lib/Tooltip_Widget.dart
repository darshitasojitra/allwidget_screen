import 'package:flutter/material.dart';

import 'homepage.dart';

class TooltipWidget extends StatefulWidget {
  const TooltipWidget({super.key});

  @override
  State<TooltipWidget> createState() => _TooltipWidgetState();
}

class _TooltipWidgetState extends State<TooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Tooltip_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Tooltip(
    message: "User Account",
  child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
  ),
),
    );
  }
}
