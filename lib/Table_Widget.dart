import 'package:flutter/material.dart';

import 'DataTable_Widget.dart';
import 'GridView_Count_Widget.dart';
import 'GridView_Widget_Builder.dart';
import 'TableCell_Widget.dart';
import 'homepage.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Table_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TablecellWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("TableCell",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DatatableWidget()));
            },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("DataTable",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
         ],
      ),

    );
  }
}
