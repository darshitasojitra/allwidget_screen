import 'package:flutter/material.dart';

import 'Animation_Widget.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation coloranimation;
  late AnimationController animationController;

  @override
  void initState(){
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 10));
    animation=Tween(begin: 10.0,end: 300.0).animate(animationController);
    coloranimation=ColorTween(begin: Colors.red,end: Colors.white).animate(animationController);

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

        title: Text("Tween Animation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Container(
    width: animation.value,
    height: animation.value,
    color: coloranimation.value,
  ),
),
    );
  }
}
