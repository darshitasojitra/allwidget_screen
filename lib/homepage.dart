import 'package:flutter/material.dart';

import 'AlertDialog_Widget.dart';
import 'Animation_Widget.dart';
import 'Appbar_Widget.dart';
import 'Bottomnavigation_Widget.dart';
import 'Button_Widget.dart';
import 'Calender_Widget.dart';
import 'Card_Widget.dart';
import 'Chart_Widget.dart';
import 'Checkbox_widget.dart';
import 'Column_widget.dart';
import 'Container_widget.dart';
import 'Form_Widget.dart';
import 'Google_Map_Widget.dart';
import 'GridView_Widget.dart';
import 'GridView_Widget_Builder.dart';
import 'Icon_Widget.dart';
import 'Image_Widget.dart';
import 'ListView_Widget.dart';
import 'Progressbar_Widget.dart';
import 'Radiobutton_Widget.dart';
import 'Rich_Text_Widget.dart';
import 'Row_Widget.dart';
import 'Scaffold_Widget.dart';
import 'Slider_Widget.dart';
import 'Sliver_Widget.dart';
import 'Snackbar_Widget.dart';
import 'Stack_Widget.dart';
import 'Switch_Widget.dart';
import 'Tabbar_Widget.dart';
import 'Table_Widget.dart';
import 'TextFormField_Widget.dart';
import 'Theme_widget.dart';
import 'Toast_Notification_Widget.dart';
import 'Tooltip_Widget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Screen",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
        backgroundColor: Colors.blue,
      ),
      body: GridView.extent(
          maxCrossAxisExtent: 130,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
           InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>AppbarWidget()));
           },
             child: Container(
              color: Colors.blue,
              child: Center(child: Text("AppBar",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                       ),
           ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Container",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RowWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Row",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ColumnWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Column",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AppbarWidget()));
          },
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageWidget()));

            },
              child: Container(
                color: Colors.blue,
                child: Center(child: Text("Image",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>IconWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Icon",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Button",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScaffoldWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Scaffold",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StackWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Stack",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("GridView",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("ListView",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RichTextWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("RichText",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextformfieldWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("TextFormField",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckboxWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Checkbox",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RadiobuttonWidget()));
          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Radio",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CardWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Card",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertdialogWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("AlertDialog",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TabbarWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Tabbar",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SwitchWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Switch",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliderWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Slider",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgressbarWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Progressbar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TooltipWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Tooltip",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SnackbarWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Snackbar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ToastNotificationWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Toast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FormWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Form",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Sliver",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomnavigationWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Bottomnavigatipn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TableWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Table",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Calender",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChartWidget()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Chart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationWidget_screen()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Animation",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ThemeWidget_screen()));

          },
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Theme",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),

        ],
      ),
    );
  }
}
