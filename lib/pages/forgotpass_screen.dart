import 'package:ecommerce/pages/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ForgotpassScreen extends StatefulWidget {
  const ForgotpassScreen({super.key});

  @override
  State<ForgotpassScreen> createState() => _ForgotpassScreenState();

  
}

class _ForgotpassScreenState extends State<ForgotpassScreen> {
  // ignore: unnecessary_new
  TextEditingController mailController = new TextEditingController();

  String email="";

  final _formkey=GlobalKey<FormState>();


  resetPassword()async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password Reset Email has been sent Successfully!!",style: TextStyle(fontWeight: FontWeight.bold),)));
    } on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No User Found",style: TextStyle(fontSize: 18.0))));
      }
    }
  }
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
        Text("Enter Your Mail",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold 
        ),),

         Expanded(
          child: Form(
            key: _formkey,
            child: Padding(
              padding: EdgeInsets.only(left:10 ),
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
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      setState(() {
                        email=mailController.text;
                      });
                      resetPassword();
                    }
                  },
                  child: Container(                
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
                ),
                 SizedBox(height: 30.0,),
      Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [       
          Text("Don't have an Account?",style: TextStyle(fontSize: 18.0,color: Colors.white),),
          SizedBox(width: 10.0,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
            },
            child: Text("Create",style: TextStyle(color: Color.fromARGB(255, 184, 166, 6),fontWeight: FontWeight.bold),))
        ],
      ),
              ],
            ),
          ),
       )),
     
         ],
      ),
   ),
);  
  }
}