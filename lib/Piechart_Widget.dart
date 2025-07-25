import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

import 'Chart_Widget.dart';

class PiechartWidget extends StatefulWidget {
  const PiechartWidget({Key? key}) : super(key: key);

  @override
  State<PiechartWidget> createState() => _PiechartWidgetState();
}

class _PiechartWidgetState extends State<PiechartWidget> {
  Map<String, double> dataMap = {
    "Food Item": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };
  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539),
  ];
  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(233, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ]
  ];

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
          "Piechart_Widget",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),

      body: PieChart(
        dataMap: dataMap,
        colorList: colorList,
        chartRadius: MediaQuery.of(context).size.width / 2,
        centerText: "Budget",
        ringStrokeWidth: 24,
        animationDuration: const Duration(seconds: 10),
        chartValuesOptions: const ChartValuesOptions(
            showChartValues: true,
            showChartValuesOutside: true,
            showChartValuesInPercentage: true,
            showChartValueBackground: true),
        legendOptions: const LegendOptions(
          showLegends: true,
          legendShape: BoxShape.rectangle,
          legendTextStyle: TextStyle(fontSize: 15),
          legendPosition: LegendPosition.bottom,
          showLegendsInRow: true,
        ),
        gradientList: gradientList,
      ),
    );
  }
}
