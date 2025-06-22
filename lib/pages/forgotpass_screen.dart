import 'package:flutter/material.dart';

class ForgotpassScreen extends StatefulWidget {
  const ForgotpassScreen({super.key});

  @override
  State<ForgotpassScreen> createState() => _ForgotpassScreenState();
}

class _ForgotpassScreenState extends State<ForgotpassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(children: [
        SizedBox(height: 70,),
        Container(
          alignment: Alignment.topCenter,
          child: Text("Password Recovery",
          style: TextStyle(
          color:  Colors.black,fontSize: 30.0,    
          fontWeight: FontWeight.bold),),
        )
       ],),
      ),
    );
  }
}