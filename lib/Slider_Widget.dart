import 'package:flutter/material.dart';

import 'homepage.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int value=0;
  int i=0;
  RangeValues _currentRangeValues=RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Slider_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(Icons.volume_up),
          Expanded(child: Slider(
              min: 0,
              max: 100,
              value: value.toDouble(), onChanged: (double newvalue){
            setState(() {
      value=newvalue.round();
            });
          }),
          ),
          Text("$value")
        ],
      ),
    ),
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(Icons.volume_up),
          Expanded(child: RangeSlider(
              min: 0,
              max: 100,
              divisions: 5,
              values: _currentRangeValues,
              labels: RangeLabels(_currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString()),
              onChanged: (RangeValues values){
            setState(() {
              _currentRangeValues=values;
            });
          }),
          ),
          Text("$i"),

        ],
      ),
    )
  ],
),
    );
  }
}
