// ignore: unused_import
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0,left: 10.0,right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
          GestureDetector(
            onTap: (){
            Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black)),
            Image.asset("images/keema_noodles.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Keema Noodles",style: AppWidget.headlineTextFieldStyle(),),
                    Text("Chicken",style: AppWidget.lightsemiTextFieldStyle(),),
                      
                  ],
                ),
              
              ],
            ),
                 SizedBox(height: 10.0,),
            Container(
              decoration: BoxDecoration(color: Colors.black),
            child: Icon(Icons.remove,color: Colors.white,),
                        )
        ],),
      ),
    );
  }
}