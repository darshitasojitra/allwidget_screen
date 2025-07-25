import 'package:flutter/material.dart';

import 'Emailsearch.dart';
import 'HomeScreen.dart';
import 'Searchscreen.dart';
import 'homepage.dart';

class BottomnavigationWidget extends StatefulWidget {
  const BottomnavigationWidget({super.key});

  @override
  State<BottomnavigationWidget> createState() => _BottomnavigationWidgetState();
}

class _BottomnavigationWidgetState extends State<BottomnavigationWidget> {
  int selectedindex=0;
final List<Widget>selectedWidget=[
  Homescreen(),
  Searchscreen(),
  Emailsearch()
];
void ontappdscreen(value){
  setState(() {
  selectedindex=value;
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Bottomnavigation_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: selectedWidget.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontappdscreen,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),

    ]),
     );
  }
}
