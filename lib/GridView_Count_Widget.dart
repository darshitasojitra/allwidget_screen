import 'package:flutter/material.dart';

import 'GridView_Widget.dart';
import 'homepage.dart';

class GridviewCountWidget extends StatefulWidget {
  const GridviewCountWidget({super.key});

  @override
  State<GridviewCountWidget> createState() => _GridviewCountWidgetState();
}

class _GridviewCountWidgetState extends State<GridviewCountWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridviewWidget()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "GridView_Count_Widget",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
       children: List.generate(choices.length, (index){
         return ChoiceCard(choice: choices[index]);
       },),
      ),
    );
  }
}

class Choice {
  const Choice(this.title, this.icon);

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice("home", Icons.home),
  const Choice("add", Icons.add),
  const Choice("camera", Icons.camera),
  const Choice("calender", Icons.calendar_month),
  const Choice("person", Icons.person),
  const Choice("adb", Icons.adb),
  const Choice("home", Icons.home),
  const Choice("add", Icons.add),
  const Choice("camera", Icons.camera),
  const Choice("calender", Icons.calendar_month),
  const Choice("person", Icons.person),
  const Choice("adb", Icons.adb),
];

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurpleAccent,
      child: Column(
        children: [
          Expanded(
              child: Icon(
            choice.icon,
            size: 50,
          )),
          Text(
            choice.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ],
      ),
    );
  }
}
