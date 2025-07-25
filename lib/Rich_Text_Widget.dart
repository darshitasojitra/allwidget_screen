import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({super.key});

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("RichText_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RichText(text:TextSpan(
            text: "Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 20),
            children: [
              TextSpan(
                  text: "  Register Now",style:TextStyle(color: Colors.blue,fontSize: 20)
              )
            ]
        )),
      ),
    );
  }
}
