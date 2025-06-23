import 'package:flutter/material.dart';

class ForgotpassScreen extends StatefulWidget {
  const ForgotpassScreen({super.key});

  @override
  State<ForgotpassScreen> createState() => _ForgotpassScreenState();
}

class _ForgotpassScreenState extends State<ForgotpassScreen> {
  // ignore: unnecessary_new
  TextEditingController mailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
       child: Column(children: [
        SizedBox(height: 70,),
        Container(
          alignment: Alignment.topCenter,
          child: Text("Password Recovery",
          style: TextStyle(
          color:  Colors.white,fontSize: 30.0,    
          fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10,),
        Text("Enter Your Mail",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
        
        ),),
         Expanded(child: Form(child: Padding(padding: EdgeInsets.only(left:10 ),
         child: ListView(children: [
          Container(
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 2.0,),
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextFormField(
              controller: mailController,
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Enter Your Email';
                }
                return null;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                prefixIcon: Icon(Icons.person,color: Colors.white,size: 30.0,
                ),border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 40.0,),
         
        
                Container(                
                  width: 140,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Send Email",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
       )
  )],),));
   
    
  }
}