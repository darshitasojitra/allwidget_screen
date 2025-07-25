import 'package:flutter/material.dart';

import 'homepage.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back)),

        title: Text("Form_Widget",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
      ),
body: Form(
    key: formkey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: TextFormField(
//       readOnly: false,
//       showCursor: true,
//       autofocus: true,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//         hintText: "Enter username",
//         hintStyle: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),
//         labelText: "Username",
//         prefixIcon: Icon(Icons.person)
//       ),
//         validator:(value){
//           if(value!.isEmpty){
//             return "Please enter username";
//           }
//         }
//     ),
//   ),
//   Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: TextFormField(
//         readOnly: false,
//         showCursor: true,
//         autofocus: true,
//         obscureText: true,
//         decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             hintText: "Enter Password",
//             hintStyle: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),
//             labelText: "Password",
//             prefixIcon: Icon(Icons.password)
//         ),
//         validator:(value){
//           if(value!.isEmpty){
//             return "Please enter password";
//           }
//         }
//     ),
//   ),
// ElevatedButton(onPressed: (){
//   if(formkey.currentState!.validate()){
//    ScaffoldMessenger.of(context).showSnackBar(content:Text("Processing data"));
//   };
// }, child: Text("Login"))
Padding(
  padding: const EdgeInsets.all(15.0),
  child: Center(
    child: TextFormField(
      showCursor: true,
      decoration: InputDecoration(
        hintText: "Enter text",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
      ),
      validator: (value){
        if(value==null||value.isEmpty){
          return "Please enter some text";
        }
        return null;
      },
    ),
  ),
),
  Padding(
    padding: const EdgeInsets.all(15.0),
    child: Center(
      child: TextFormField(
        obscureText: true,
        showCursor: true,
        decoration: InputDecoration(
            hintText: "Enter Password",
            hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
        ),
        validator: (value){
          if(value==null||value.isEmpty){
            return "Please enter some text";
          }
          return null;
        },
      ),
    ),
  ),


  ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue
      ),
      onPressed: (){
    if(formkey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing data")));
    }
  }, child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))
],
)),
    );
  }
}
