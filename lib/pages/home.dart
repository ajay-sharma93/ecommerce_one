import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {


  bool icecream=false, noodles=false,combo=false,burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0,left: 10.0,right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Guys",
                  style: AppWidget.boldTextFieldStyle()
                ),
                Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 96, 95, 95),borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.shopping_cart,color: Colors.white,),
              ),
              ],
            ),
            SizedBox(height: 10,),
            Text("Delicious Food",
            style: AppWidget.headlineTextFieldStyle(),
            ),

            Text("Discover and Get Great Food",
            style: AppWidget.lightTextFieldStyle()
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [            
              GestureDetector(
                onTap: (){
                  icecream=false;
                  combo=false;
                  noodles=false;
                  burger=true;
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: icecream?Colors.black:Colors.black,borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/icecream.png",height: 50,width: 50,fit: BoxFit.cover,color:icecream? Colors.white:Colors.white,),
                  ),
                ),
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(color: noodles?Colors.transparent:Colors.black,borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/noodles.png",height: 50,width: 50,fit: BoxFit.cover,color:noodles? Colors.white:Colors.white,),
                ),
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/combo_set.png",height: 50,width: 50,fit: BoxFit.cover,),
                ),
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/burger.png",height: 50,width: 50,fit: BoxFit.cover,),
                ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}