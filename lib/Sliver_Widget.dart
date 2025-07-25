import 'package:flutter/material.dart';

import 'GridView_Count_Widget.dart';
import 'GridView_Extent_Widget.dart';
import 'GridView_Widget_Builder.dart';
import 'SliverAppbar_Widget.dart';
import 'SliverList_Widget.dart';
import 'Sliver_Grid_Widget.dart';
import 'homepage.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({super.key});

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Sliver_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
  body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverappbarWidget()));
          },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("SliverAppbar",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverlistWidget()));
          },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("SliverList",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverGridWidget()));
          },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("SliverGrid",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),

        // Center(
        //   child: InkWell(onTap: (){
        //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>HorizontalListWidget()));
        //   },
        //     child: Container(
        //       height: 150,
        //       width: 150,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Center(child: Text("HorizontalList",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
        //     ),
        //   ),
        // )
      ],
    ),

    );
  }
}
