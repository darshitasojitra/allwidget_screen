import 'package:flutter/material.dart';

import 'ListView_Widget.dart';

class BasicListsWidget extends StatefulWidget {
  const BasicListsWidget({super.key});

  @override
  State<BasicListsWidget> createState() => _BasicListsWidgetState();
}

class _BasicListsWidgetState extends State<BasicListsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Basic_Lists_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Padding(
  padding: const EdgeInsets.only(left: 140),
  child: ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.add_a_photo),
        title: Text("add_a_photo"),
      ),
      ListTile(
        leading: Icon(Icons.password),
        title: Text("password"),
      ),
      ListTile(
        leading: Icon(Icons.add),
        title: Text("add"),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("person"),
      ),
      ListTile(
        leading: Icon(Icons.add_call),
        title: Text("add_call"),
      ),
      ListTile(
      leading: Icon(Icons.add_a_photo),
      title: Text("add_a_photo"),
      ),
      ListTile(
      leading: Icon(Icons.password),
      title: Text("password"),
      ),
      ListTile(
      leading: Icon(Icons.add),
      title: Text("add"),
      ),
      ListTile(
      leading: Icon(Icons.person),
      title: Text("person"),
      ),
      ListTile(
      leading: Icon(Icons.add_call),
      title: Text("add_call")),
      ListTile(
      leading: Icon(Icons.add_a_photo),
      title: Text("add_a_photo"),
      ),
      ListTile(
      leading: Icon(Icons.password),
      title: Text("password"),
      ),
      ListTile(
      leading: Icon(Icons.add),
      title: Text("add"),
      ),
      ListTile(
      leading: Icon(Icons.person),
      title: Text("person"),
      ),
      ListTile(
      leading: Icon(Icons.add_call),
      title: Text("add_call"),
      ),
      ListTile(
      leading: Icon(Icons.add_a_photo),
      title: Text("add_a_photo"),
      ),
      ListTile(
      leading: Icon(Icons.password),
      title: Text("password"),
      ),ListTile(
      leading: Icon(Icons.add),
      title: Text("add"),
      ),ListTile(
      leading: Icon(Icons.person),
      title: Text("person"),
      ),ListTile(
      leading: Icon(Icons.add_call),
      title: Text("add_call"),)
    ],

  ),
),
    );
  }
}
