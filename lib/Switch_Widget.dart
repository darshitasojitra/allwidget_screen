import 'package:flutter/material.dart';

import 'homepage.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched=false;
  var textvalue="Switch Is off";

  void toggleSwitch(bool value){
if(isSwitched==false){
  setState(() {
    isSwitched=true;
    textvalue="Switch is on";
  });
}else{
  setState(() {
    isSwitched=false;
    textvalue="Switch is off";
  });
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Switch_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: Switch(
          activeColor: Colors.greenAccent,
          activeTrackColor: Colors.brown,
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.red,
          value: isSwitched, onChanged: toggleSwitch),
    ),
   Text(
       textvalue,
   )
  ],
),
    );
  }
}
