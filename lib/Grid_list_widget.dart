import 'package:allwidget_screen/homepage.dart';
import 'package:flutter/material.dart';

class GridListWidget extends StatefulWidget {
  const GridListWidget({super.key});

  @override
  State<GridListWidget> createState() => _GridListWidgetState();
}

class _GridListWidgetState extends State<GridListWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Grid_List_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: GridView.count(crossAxisCount: 2,
children: List.generate(50, (index) {
 return Center(child: Text( 'Item $index',style: TextTheme.of(context).headlineSmall,));
}),)
    );
  }
}
