import 'package:flutter/material.dart';

import 'GridView_Count_Widget.dart';
import 'GridView_Extent_Widget.dart';
import 'GridView_Widget_Builder.dart';
import 'homepage.dart';

class GridviewWidget extends StatefulWidget {
  const GridviewWidget({super.key});

  @override
  State<GridviewWidget> createState() => _GridviewWidgetState();
}

class _GridviewWidgetState extends State<GridviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("GridView_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewBuilderWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("GridViewBuilder",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewCountWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("GridviewCount",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewExtentWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("GridViewExtent",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
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
