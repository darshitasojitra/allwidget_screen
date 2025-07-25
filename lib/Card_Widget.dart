import 'package:flutter/material.dart';

import 'homepage.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Card_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Container(
    height: 150,
    child: Card(
      elevation: 50,
      color: Colors.grey.shade200,

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale',style: TextStyle(fontSize: 20),),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Row(
              children: [
                TextButton(onPressed: (){}, child: Text("BUY TICKETS")),
                SizedBox(width: 5,),
                TextButton(onPressed: (){}, child: Text("LISTEN")),
              ],
            ),
          )
        ],
      ),
    ),
  ),
),
    );
  }
}
