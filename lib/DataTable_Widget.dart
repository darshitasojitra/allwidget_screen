import 'package:flutter/material.dart';

import 'Table_Widget.dart';

class DatatableWidget extends StatefulWidget {
  const DatatableWidget({super.key});

  @override
  State<DatatableWidget> createState() => _DatatableWidgetState();
}

class _DatatableWidgetState extends State<DatatableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TableWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("DataTable_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body:Center(
  child: DataTable(
      columns: [
    DataColumn(label: Text("Id")),
    DataColumn(label: Text("Tutorial")),
    DataColumn(label: Text("Name"))
  ],
      rows: [
        DataRow(cells: [
          DataCell(Text("1")),
          DataCell(Text("Flutter")),
          DataCell(Text("Google"))
        ]),
        DataRow(cells: [
          DataCell(Text("2")),
          DataCell(Text("Dart")),
          DataCell(Text("google")),
        ]),
        DataRow(cells: [
          DataCell(Text("3")),
          DataCell(Text("java")),
          DataCell(Text("sun maicrosystum")),
        ]),
      ]),
)
    );
  }
}
