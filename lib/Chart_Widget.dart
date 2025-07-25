import 'package:flutter/material.dart';

import 'Barchart_Widget.dart';
import 'GridView_Count_Widget.dart';
import 'GridView_Extent_Widget.dart';
import 'GridView_Widget_Builder.dart';
import 'Linechart_Widget.dart';
import 'PieChartNew_screen.dart';
import 'Piechart_Widget.dart';
import 'homepage.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Chart_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BarchartWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Barchart",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LinechartWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Linechart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PiechartWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Piechart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PiechartnewScreen()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("PieChartNew",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),



        ],
      ),

    );
  }
}
