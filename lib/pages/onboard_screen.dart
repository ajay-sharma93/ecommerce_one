import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {


  int currentIndex=0;
  late PageController _controller;


  @override

  void initState(){
    _controller=PageController(initialPage: 0);
    super.initState();  
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        PageView.builder(
          controller: _controller,  
          i      
          itemBuilder: (_,i){
          return Padding(padding: EdgeInsets.all(20),
          child: Column(children: [],),
          );
        })
      ],),
    );
  }
}