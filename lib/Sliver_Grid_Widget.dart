import 'package:flutter/material.dart';

class SliverGridWidget extends StatefulWidget {
  const SliverGridWidget({super.key});

  @override
  State<SliverGridWidget> createState() => _SliverGridWidgetState();
}

class _SliverGridWidgetState extends State<SliverGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:CustomScrollView(
  slivers: [
    SliverGrid(
delegate: SliverChildBuilderDelegate((BuildContext context,int index){
    return new Container(
    color: _randomPaint(index),
    height:150
    );
    }), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4 ))
  ],
) ,
    );
  }
}
Color _randomPaint(int index){
  if(index%3==0){
    return Colors.orange.shade200;
  }else if(index%3==1){
    return Colors.purpleAccent.shade200;
  }
  return Colors.greenAccent.shade200;
}
