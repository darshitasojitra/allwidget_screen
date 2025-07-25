import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        textTheme: TextTheme(
          displaySmall: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),
          displayMedium: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),
          displayLarge: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.bold),

          headlineSmall:TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(color: Colors.tealAccent,fontSize: 25,fontWeight: FontWeight.bold),
          headlineLarge:TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold) ,

          titleSmall: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.bold),
          titleLarge: TextStyle(color: Colors.brown,fontSize: 25,fontWeight: FontWeight.bold),

            bodySmall: TextStyle(color: Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),
          bodyLarge:TextStyle(color: Colors.redAccent,fontSize: 25,fontWeight: FontWeight.bold) ,

          labelSmall: TextStyle(color: Colors.blue.shade200,fontSize: 25,fontWeight: FontWeight.bold),
          labelMedium: TextStyle(color: Colors.red.shade200,fontSize: 25,fontWeight: FontWeight.bold),
          labelLarge: TextStyle(color: Colors.yellow.shade200,fontSize: 25,fontWeight: FontWeight.bold)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: home(),
    );
  }
}


