import 'package:flutter/material.dart';

import 'Barchart_Widget.dart';
import 'Linechart_Widget.dart';
import 'Physics_based_Animation.dart';
import 'Tween_Animation.dart';
import 'homepage.dart';

class AnimationWidget_screen extends StatefulWidget {
  const AnimationWidget_screen({super.key});

  @override
  State<AnimationWidget_screen> createState() => _AnimationWidget_screenState();
}

class _AnimationWidget_screenState extends State<AnimationWidget_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Animation_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TweenAnimation()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("TweenAnimation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PhysicsBasedAnimation_screen()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("   Physics-based     ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),




        ],
      ),

    );
  }
}
