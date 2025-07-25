import 'package:flutter/material.dart';

import 'Button_list.dart';
import 'homepage.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  String dropdownvalue='Rajkot';
  var abc=[
    'Rajkot',
    'Surat',
    'Ahmedabad',
    'Jetpur',
    'Pune',
    'Mumbai'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Button_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context)=>[
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 10,),
                Text("popup1")
              ],
            )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup2")
                  ],
                )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup3")
                  ],
                )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup4")
                  ],
                )),
              ])
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));
            }, child: Text("Elevated Button")),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

              }, icon: Icon(Icons.person)),
              Text("Icon Button")
            ],
          ),
          SizedBox(height: 20,),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

          },
            child: Container(
              height: 130,
              width: 150,
              color: Colors.blue,
              child: Center(child: Text("InkWell_Button",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

            }, child: Text("OutlineButton")),
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Button bar"),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

                      }, child: Text("Button1",style: TextStyle(color: Colors.white),)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

                      }, child: Text("Button2",style: TextStyle(color: Colors.white),)),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),

          Container(
            child: DropdownButton(
                value: dropdownvalue,
                items: abc.map((String city){
              return DropdownMenuItem(child: Text(city),
              value: city);
                }).toList(),
                onChanged: (String? newValue){
              setState(() {
                dropdownvalue=newValue!;
              });
            }),
          )
        ],
      ),
floatingActionButton: FloatingActionButton(
    onPressed:(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonList()));

    },
    child: Icon(Icons.add),),
    );
  }
}
