import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'Chart_Widget.dart';

class LinechartWidget extends StatefulWidget {
  const LinechartWidget({super.key});

  @override
  State<LinechartWidget> createState() => _LinechartWidgetState();
}

class _LinechartWidgetState extends State<LinechartWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChartWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Linechart_Widget", style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 300,
          child: LineChart(
              LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                        spots: [
                          FlSpot(0, 1),
                          FlSpot(1, 3),
                          FlSpot(2, 2),
                          FlSpot(3, 1.5),
                          FlSpot(4, 2.8)
                        ],
                      isCurved: true,
                      dotData: FlDotData()

                    )
                  ]

              )
          ),
        ),
      )
      ,
    );
  }
}
