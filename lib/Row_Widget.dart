import 'package:flutter/material.dart';

import 'Container_widget.dart';
import 'homepage.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Row_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),
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
                SizedBox(width: 20,),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
