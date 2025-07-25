import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'Chart_Widget.dart';

class BarchartWidget extends StatefulWidget {
  const BarchartWidget({super.key});

  @override
  State<BarchartWidget> createState() => _BarchartWidgetState();
}

class _BarchartWidgetState extends State<BarchartWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChartWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Chart_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Container(
    height: 400,
    child: BarChart(
      BarChartData(
        barGroups: [
  BarChartGroupData(x:0,barRods:[BarChartRodData(toY: 5,color: Colors.red)] ),
          BarChartGroupData(x:1,barRods: [BarChartRodData(toY: 7,color: Colors.blue)]),
          BarChartGroupData(x:2,barRods:[BarChartRodData(toY: 9,color: Colors.green)] ),
          BarChartGroupData(x:3,barRods: [BarChartRodData(toY: 3,color: Colors.tealAccent)])
        ]
      )
    ),
  ),
),
    );
  }
}
