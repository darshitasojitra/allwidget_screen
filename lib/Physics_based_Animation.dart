import 'package:flutter/material.dart';

import 'Animation_Widget.dart';

class PhysicsBasedAnimation_screen extends StatefulWidget {
  const PhysicsBasedAnimation_screen({super.key});

  @override
  State<PhysicsBasedAnimation_screen> createState() => _PhysicsBasedAnimation_screenState();
}

class _PhysicsBasedAnimation_screenState extends State<PhysicsBasedAnimation_screen> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  var listRadius=[500.0,450.0,400.0,350.0,300.0,250.0,200.0,150.0,100.0,50.0];

  @override
  void initState(){
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 10));
    animation=Tween(begin: 0.0,end: 1.0).animate(animationController);
    animationController.addListener((){
      setState(() {

      });
    });
    animationController.forward();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationWidget_screen()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Physics_based_Animation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Stack(
    children:listRadius.map((radius)=>Container(
      width: radius*animation.value,
      height: radius*animation.value,
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(1.0-animation.value),
      ),
    )).toList()
  ),
),
    );
  }
}
