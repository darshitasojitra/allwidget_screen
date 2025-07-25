import 'package:flutter/material.dart';

import 'Sliver_Widget.dart';

class SliverappbarWidget extends StatefulWidget {
  const SliverappbarWidget({super.key});

  @override
  State<SliverappbarWidget> createState() => _SliverappbarWidgetState();
}

class _SliverappbarWidgetState extends State<SliverappbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverWidget()));
      //   }, icon: Icon(Icons.arrow_back)),
      //   title: Text("SliverAppbar_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
      //   backgroundColor: Colors.blue,
      // ),
body: CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      actions:<Widget> [
        Icon(Icons.person, size: 30,color: Colors.white,)      ],
      title: Text("SliverAppBar_Widget",style: TextStyle(color: Colors.white),),
      leading: Icon(Icons.menu,color: Colors.white,),
      backgroundColor: Colors.blue,
      floating: true,
      pinned: true,
    )
  ],
),
    );
  }
}
