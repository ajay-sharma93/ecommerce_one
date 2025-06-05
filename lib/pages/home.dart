import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {


  bool ice=false, pizza=false,salad=false,burger1=false;
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
                  ice=true;
                  burger1=false;
                  salad=false;
                  pizza=false;
                  setState(() {
                    
                  });

                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: ice?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    // ignore: deprecated_member_use
                    child: SvgPicture.asset('images/svg/ice.svg',height: 40,width: 40,fit: BoxFit.cover,color: ice?Colors.white:Colors.black,),
                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  ice=false;
                  burger1=true;
                  salad=false;
                  pizza=false;
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: burger1?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    // ignore: deprecated_member_use
                    child: SvgPicture.asset('images/svg/burger1.svg',height: 40,width: 40,fit: BoxFit.cover,color: burger1?Colors.white:Colors.black,),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  ice=false;
                  burger1=false;
                  salad=true;
                  pizza=false;
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: salad?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    // ignore: deprecated_member_use
                    child: SvgPicture.asset('images/svg/salad.svg',height: 40,width: 40,fit: BoxFit.cover,color: salad?Colors.white:Colors.black,),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                   ice=false;
                  burger1=false;
                  salad=false;
                  pizza=true;
                  setState(() {
                    
                  });
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(color: pizza?Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    // ignore: deprecated_member_use
                    child: SvgPicture.asset('images/svg/pizza.svg',height: 40,width: 40,fit: BoxFit.cover,color: pizza?Colors.white:Colors.black,),
                  ),
                ),
              ),
            ],
                
                 
              
              ),
             
           
          ],
        ),
      ),
    );
  }
}