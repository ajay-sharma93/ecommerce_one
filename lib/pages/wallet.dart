import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
     margin: EdgeInsets.only(top: 60.0),
     child: Column(
     
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Material(
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Center(child: Text("Wallet",style: AppWidget.boldTextFieldStyle(),)))),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( 
                           
                children: [
              Image.asset("assets/images/wallet.png",width: 60,height:60,fit:BoxFit.cover,),
              SizedBox(width: 40.0,),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                Text("Your Wallet",style: AppWidget.boldTextFieldStyle(),),
                SizedBox(height: 5.0,),
                Text("\$"+ "1000",style: AppWidget.semiBoldTextFieldStyle(),),
              ],)
                        ],
                        ),
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Add Money",style: AppWidget.semiBoldTextFieldStyle(),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              GestureDetector(
                onTap: (){},
                child: Material(
                  
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(10)
                    ),
                  child: Text("\$"+"100",style: AppWidget.boldTextFieldStyle(),),),
                ),
              ),
              Material(
                elevation: 5,
                 borderRadius: BorderRadius.circular(10),
                child: Container(
                  
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(10)
                  ),
                child: Text("\$"+"500",style: AppWidget.boldTextFieldStyle(),),),
              ),
              Material(
                elevation: 5,
                 borderRadius: BorderRadius.circular(10),
                child: Container(
                  
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(10)
                  ),
                child: Text("\$"+"1000",style: AppWidget.boldTextFieldStyle(),),),
              ),
              Material(
                elevation: 5,
                 borderRadius: BorderRadius.circular(10),
                child: Container(
                  
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(10)
                  ),
                child: Text("\$"+"1500",style: AppWidget.boldTextFieldStyle(),),),
              ),
            
            ],),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 78, 157)
            ),
          )
    ],),), 
    );
  }
}