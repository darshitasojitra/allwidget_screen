import 'package:flutter/material.dart';

import 'homepage.dart';

class AlertdialogWidget extends StatefulWidget {
  const AlertdialogWidget({super.key});

  @override
  State<AlertdialogWidget> createState() => _AlertdialogWidgetState();
}

class _AlertdialogWidgetState extends State<AlertdialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("AlertDialog_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Padding(
  padding: const EdgeInsets.all(15.0),
  child: TextField(
  decoration: InputDecoration(
    hintText: "Enter your username",
  label: Text("Username"),
    border: OutlineInputBorder()
  ),
  ),
),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Password"),
            hintText: "Enter Password"
        ),
      ),
    ),
ElevatedButton(
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue
),
    onPressed: (){
  showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Alert dialog box"),
    content: Text("You have raised a Alert Dialog Box"),
  ));
},
    child: Text("Login",style: TextStyle(color: Colors.white),))
  ],
),
    );
  }
}
