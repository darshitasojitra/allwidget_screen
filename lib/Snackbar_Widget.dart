import 'package:flutter/material.dart';

import 'homepage.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({super.key});

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Snackbar_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Center(
  child: Container(
    height: 60,
    width: 350,
    child: ElevatedButton(onPressed: (){
      final snackbar=SnackBar(content: Text("snackbar message"));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }, child: Text("Snackbar",style: TextStyle(fontSize: 25),)),
  ),
),
    );
  }
}
