import 'package:flutter/material.dart';

import 'homepage.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3, child: Scaffold(
  appBar: AppBar(
    leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
    }, icon: Icon(Icons.arrow_back)),
    title: Text("Tabbar_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
    backgroundColor: Colors.blue,
    bottom: TabBar(tabs: <Widget>[
      Tab(
        icon: Icon(Icons.account_circle_rounded,color: Colors.white,),
      ),
      Tab(
        icon: Icon(Icons.add_call,color: Colors.white,),
      ),
      Tab(
        icon: Icon(Icons.cloud,color: Colors.white,),
      ),
    ]),
  ),
  body: TabBarView(children: [
    Center(
      child: Text("account_circle_rounded",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    ),
    Center(
      child: Text("add_call",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    ),
    Center(
      child: Text("cloud",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
    ),
  ]),
));

  }
}
