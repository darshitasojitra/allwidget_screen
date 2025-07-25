import 'package:flutter/material.dart';

import 'Image_Widget.dart';

class Asset_image extends StatefulWidget {
  const Asset_image({super.key});

  @override
  State<Asset_image> createState() => _Asset_imageState();
}

class _Asset_imageState extends State<Asset_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Asset_image",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Center(
        child: Container(
        height: 300,
        width: 300,
        child: Image.asset("assets/images/AKDM-04-1-Copy.jpg"),
        ),
      ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            height: 300,
            width: 300,
            child: Image.asset("assets/images/img2.jpg"),
          ),
        )
      ],
    ),
    );
  }
}
