import 'package:flutter/material.dart';

import 'homepage.dart';

class ThemeWidget_screen extends StatefulWidget {
  const ThemeWidget_screen({super.key});

  @override
  State<ThemeWidget_screen> createState() => _ThemeWidget_screenState();
}

class _ThemeWidget_screenState extends State<ThemeWidget_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Theme_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.displayLarge,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.displayMedium,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.displaySmall,)),

    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.labelLarge,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.labelMedium,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.labelSmall,)),

    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.headlineSmall,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.headlineMedium,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.headlineLarge,)),

    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.titleLarge,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.titleMedium,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.titleSmall,)),

    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.bodyMedium,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.bodySmall,)),
    Center(child: Text("Theme Screen",style: Theme.of(context).textTheme.bodyLarge,)),


  ],
),
    );
  }
}
