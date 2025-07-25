import 'package:flutter/material.dart';

import 'Table_Widget.dart';

class TablecellWidget extends StatefulWidget {
  const TablecellWidget({super.key});

  @override
  State<TablecellWidget> createState() => _TablecellWidgetState();
}

class _TablecellWidgetState extends State<TablecellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TableWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("TableCell_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: Container(
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100),
          border: TableBorder.all(
          color: Colors.black,
          width: 2
          ),
          children: [
          TableRow(
              children: [
              Column(
                  children: [
                  Text("Tutorial"),
                  ],
              ),
                Column(
                  children: [
                    Text("Framework"),
                  ],
                ),Column(
                  children: [
                    Text("Language"),
                  ],
                ),

        ]
      ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Fultter"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Dart"),
                    ],
                  ),Column(
                    children: [
                      Text("java"),
                    ],
                  ),

                ]
            ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Fultter"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Dart"),
                    ],
                  ),Column(
                    children: [
                      Text("java"),
                    ],
                  ),

                ]
            ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Fultter"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Dart"),
                    ],
                  ),Column(
                    children: [
                      Text("java"),
                    ],
                  ),

                ]
            ),
            TableRow(
                children: [
                  Column(
                    children: [
                      Text("Fultter"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Dart"),
                    ],
                  ),Column(
                    children: [
                      Text("java"),
                    ],
                  ),

                ]
            ),

          ],

        ),
      ),
    )
  ],
),
    );
  }
}
