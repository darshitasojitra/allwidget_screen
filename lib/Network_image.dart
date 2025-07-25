import 'package:flutter/material.dart';

import 'Image_Widget.dart';

class Network_image extends StatefulWidget {
  const Network_image({super.key});

  @override
  State<Network_image> createState() => _Network_imageState();
}

class _Network_imageState extends State<Network_image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageWidget()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Network_image",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 300,
            width: 300,
            child: Image.network("http://www.mygodpictures.com/wp-content/uploads/2015/07/Image-Of-Swaminarayan.gif"),
          ),
        ),
        Center(
          child: Container(
            height: 300,
            width: 300,
            child: Image.network("https://wallpaperaccess.com/full/4565311.jpg"),
          ),
        )
      ],
    ),
    );
  }
}
