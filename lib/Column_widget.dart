import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black,
                            offset: new Offset(5, 5)
                        )
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      border: Border.all(color: Colors.black),
                      gradient: LinearGradient(colors: [
                        Colors.purpleAccent.shade100,
                        Colors.lightGreenAccent.shade100,
                        Colors.red.shade100
                      ])
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black,
                            offset: new Offset(5, 5)
                        )
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      border: Border.all(color: Colors.black),
                      gradient: LinearGradient(colors: [
                        Colors.purpleAccent.shade100,
                        Colors.lightGreenAccent.shade100,
                        Colors.red.shade100
                      ])
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black,
                            offset: new Offset(5, 5)
                        )
                      ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      border: Border.all(color: Colors.black),
                      gradient: LinearGradient(colors: [
                        Colors.purpleAccent.shade100,
                        Colors.lightGreenAccent.shade100,
                        Colors.red.shade100
                      ])
                  ),
                ),
              

              ],
            ),
          ),
        ),
      ),
    );
  }
}
