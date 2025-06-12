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
  int a =1;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
               color: Colors.blue,
                
                
                elevation: 10,
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/keema_noodles.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill)),
            ),
            SizedBox(height: 10.0,),
            Row(
           
             children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Keema Noodles",style: AppWidget.headlineTextFieldStyle(),),
                Text("Authenticate taste of keema & \nperfect blend of spicies",style: AppWidget.lightsemiTextFieldStyle(),)
                ],
             ),
             Spacer(),
             GestureDetector(
              onTap: (){
                if (a>1) {
                  
                --a;
                }
                setState(() {
                  
                });
              },
               child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                child: Icon(Icons.remove,color: Colors.white,),
               ),
             ),
              SizedBox(width: 20,),
             Text(a.toString(),style: AppWidget.boldTextFieldStyle(),),
             SizedBox(width: 20,),
             GestureDetector(
              onTap: (){
                ++a;
                setState(() {
                  
                });
              },
               child: Container(
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                child: Icon(Icons.add,color: Colors.white,),
               ),
             ),
              
             ],
            ),
            SizedBox(height: 10.0,),
            Text("Spicy, savory noodles tossed with flavorful minced meat (keema) and aromatic spices. A hearty fusion of comfort and bold taste ready to satisfy your cravings in minutes.",style: AppWidget.detailssemiTextFieldStyle(),textAlign: TextAlign.justify,maxLines: 4,
            ),
            SizedBox(height: 10,),
            Row(children: [
              Text("Delivery Time",style: AppWidget.boldTextFieldStyle(),),
              SizedBox(width: 15,),
              Icon(Icons.alarm,color: Colors.black54,),
              Text("25 min ",style: AppWidget.lightsemiTextFieldStyle(),),       
            ],),
           Spacer(),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Column(
                   children: [
                     Text("Total Price",style: AppWidget.semiBoldTextFieldStyle(),),
                   ],
                 ),
               ],
             ),
           )
           
           
        ],),
           
      ),
    );
  }
}