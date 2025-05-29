import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Text("Delicious Food",style: AppWidget.headlineTextFieldStyle(),)
           
          ],
        ),
      ),
    );
  }
}