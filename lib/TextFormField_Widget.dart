import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

class TextformfieldWidget extends StatefulWidget {
  const TextformfieldWidget({super.key});

  @override
  State<TextformfieldWidget> createState() => _TextformfieldWidgetState();
}

class _TextformfieldWidgetState extends State<TextformfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("TextFormField_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLength: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter name",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
        labelText: "Name",
      prefixIcon: Icon(Icons.person)
      ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLength: 20,
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            suffixIcon: Icon(Icons.remove_red_eye),
            border: OutlineInputBorder(),
            hintText: "Enter Password",
            hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
            labelText: "Password"
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Enter your username",

        ),
      ),
    ),

  ],
),
    );
  }
}
