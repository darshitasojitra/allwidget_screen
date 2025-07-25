import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'Chart_Widget.dart';

class PiechartnewScreen extends StatefulWidget {
  const PiechartnewScreen({super.key});

  @override
  State<PiechartnewScreen> createState() => _PiechartnewScreenState();
}

class _PiechartnewScreenState extends State<PiechartnewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChartWidget()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Chart_Widget",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 300,
          child: PieChart(PieChartData(
            sections: [
              PieChartSectionData(value: 40, color: Colors.red, title: "40%"),
              PieChartSectionData(value: 30, color: Colors.green, title: '30%'),
              PieChartSectionData(value: 20, color: Colors.blue, title: '20%'),
              PieChartSectionData(value: 10, color: Colors.yellow, title: '10%'),
            ],
          )),
        ),
      ),
    );
  }
}
