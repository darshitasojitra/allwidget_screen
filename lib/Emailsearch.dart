import 'package:flutter/material.dart';

class Emailsearch extends StatefulWidget {
  const Emailsearch({super.key});

  @override
  State<Emailsearch> createState() => _EmailsearchState();
}

class _EmailsearchState extends State<Emailsearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Emailscreen",style: TextStyle(fontSize: 30),)),
    );
  }
}
