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
     child: Column(children: [
      Material(
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Center(child: Text("Wallet",style: AppWidget.boldTextFieldStyle(),)))),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
            child: Row(            
              children: [
            Image.asset("assets/images/wallet.png",width: 100,height:60,fit:BoxFit.cover,),
                      ],),)
    ],),), 
    );
  }
}