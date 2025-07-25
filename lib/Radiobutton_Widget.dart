import 'package:flutter/material.dart';

import 'homepage.dart';

class RadiobuttonWidget extends StatefulWidget {
  const RadiobuttonWidget({super.key});

  @override
  State<RadiobuttonWidget> createState() => _RadiobuttonWidgetState();
}

class _RadiobuttonWidgetState extends State<RadiobuttonWidget> {
  String _selectedGender="male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Radio_button_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Please let us know your gender:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    ListTile(
      leading: Radio(value: "male", groupValue:_selectedGender, onChanged: (value){
        setState(() {
          _selectedGender=value!;
        });
      }),
      title: Text("Male",style: TextStyle(fontSize: 20,),),
    ),
    ListTile(
      leading: Radio(value: "Female", groupValue:_selectedGender, onChanged: (value){
        setState(() {
          _selectedGender=value!;
        });
      }),
      title: Text("Female",style: TextStyle(fontSize: 20),),
    ),
    SizedBox(height: 20,),
    Text(_selectedGender=="male"?"Hello gentlement!":"Hi lady!",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
  ],
),
    );
  }
}
