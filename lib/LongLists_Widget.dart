import 'package:flutter/material.dart';

import 'ListView_Widget.dart';

class LonglistsWidget extends StatefulWidget {
  const LonglistsWidget({super.key});

  @override
  State<LonglistsWidget> createState() => _LonglistsWidgetState();
}

class _LonglistsWidgetState extends State<LonglistsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Long_List_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: ListView.builder(
  itemCount: 50,
  itemBuilder: (context, index) {
  return ListTile(
    leading: Icon(Icons.add),
    trailing: Text("MDIDM"),
    title: Text("Flutter training"),
    subtitle: Text("dart"),
  );
},),
    );
  }
}
