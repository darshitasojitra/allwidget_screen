import 'package:flutter/material.dart';

class SliverlistWidget extends StatefulWidget {
  const SliverlistWidget({super.key});

  @override
  State<SliverlistWidget> createState() => _SliverlistWidgetState();
}

class _SliverlistWidgetState extends State<SliverlistWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions:<Widget> [
              Icon(Icons.person, size: 30,color: Colors.white,)      ],
            title: Text("SliverList_Widget",style: TextStyle(color: Colors.white),),
            leading: Icon(Icons.menu,color: Colors.white,),
            backgroundColor: Colors.blue,
            floating: true,
            pinned: true,
          ),
          SliverList(delegate: new SliverChildListDelegate(buildList(20))),
        ],
      ),

    );
  }
}
List <Widget> buildList(int count){
  List<Widget> listItems=[];
  for(int i=0;i<count;i++){
    listItems.add(new Padding(padding: new EdgeInsets.all(16),
    child: new Text(
      "Sliver Item ${i.toString()}",
      style: new TextStyle(fontSize: 22),
    ),
    ));
  }
  return listItems;

}
