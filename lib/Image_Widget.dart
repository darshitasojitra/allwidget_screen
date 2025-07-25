import 'package:flutter/material.dart';

import 'Asset_image.dart';
import 'Network_image.dart';
import 'homepage.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Image_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Asset_image()));
           },
             child: Container(
               height: 170,
               width: 170,
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Center(child: Text("Asset image",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
             ),
           ),
         ),
          SizedBox(height: 20,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Network_image()));

          },
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("Network image",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
          ),
        ],
      ),
    );
  }
}
