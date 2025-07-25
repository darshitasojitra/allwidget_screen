import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homepage.dart';

class ToastNotificationWidget extends StatefulWidget {
  const ToastNotificationWidget({super.key});

  @override
  State<ToastNotificationWidget> createState() => _ToastNotificationWidgetState();
}

class _ToastNotificationWidgetState extends State<ToastNotificationWidget> {
  void showToast(){
    Fluttertoast.showToast(msg: "This is toast message",
    timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      textColor: Colors.yellow,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Toast_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body:Center(child: ElevatedButton(onPressed: showToast, child: Text("Click to show")))

    );
  }
}
