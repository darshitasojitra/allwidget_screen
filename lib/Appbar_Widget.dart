import 'package:flutter/material.dart';

import 'Row_Widget.dart';
import 'homepage.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Row_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.email,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.phone,color: Colors.white,)
        ],
      ),
    );
  }
}
