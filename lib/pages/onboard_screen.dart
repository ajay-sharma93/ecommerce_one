import 'package:ecommerce/pages/signupscreen.dart';
import 'package:ecommerce/widgets/content_model.dart';
import 'package:ecommerce/widgets/widget_support.dart';
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
        Expanded(
          child: PageView.builder(
            controller: _controller,  
            itemCount:contents.length, 
            onPageChanged: (int index){
              setState(() {
                currentIndex=index;
              });
            },     
            itemBuilder: (_,i){
            return Padding(padding: EdgeInsets.all(20),
            child: Column(children: [
              Image.asset(contents[i].image,height: 350,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
              SizedBox(height: 40.0,),
              Center(child: Text(contents[i].title,style: AppWidget.semiBoldTextFieldStyle(),)),
              SizedBox(height: 40.0,),
              Text(contents[i].description,style: AppWidget.detailssemiTextFieldStyle(),),
          
            ],
            ),
            );
          }),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            List.generate(contents.length, (index)=>
              buildDot(index,context),
            ),         
          ),
        ),
        GestureDetector(
          onTap: (){
            if(currentIndex==contents.length-1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signupscreen(),));
            }
            _controller.nextPage(duration:Duration(milliseconds: 100), curve: Curves.bounceIn);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.red),
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: Text("NEXT",style: TextStyle(color: Colors.white),),
          ),
        )
      ],),
    );
  }
  Container buildDot(int index,BuildContext context){
    return Container(
      height: 10.0,
      width:currentIndex==index?18:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
    );
  }
}