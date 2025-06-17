import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        padding: EdgeInsets.symmetric(),     
        child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:[
                Color(0xFFff5c30),
                Color(0xFFe74b1a),
              ])
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),             
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
                child: Column(children: [
                  Center(child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width/2,fit: BoxFit.cover,)),

                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0), 
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.6,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(height: 5.0,),
                          Text("Sign Up",style:TextStyle(color: Colors.white,fontSize: 18),
                           ),
                          
                         TextField(
                            decoration: InputDecoration(hintText: 'Name',hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.person)),
                         ),
                         SizedBox(height: 5,),
                         TextField(
                            decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.email)),
                         ),
                         SizedBox(height: 5,),
                         TextField(
                          obscureText: true,
                            decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.lock)),
                         ),
                         SizedBox(height: 40,),
                        
                          
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(                                                   
                              width: MediaQuery.of(context).size.width,                        
                              decoration: BoxDecoration(color: Color(0xFFff5c30),borderRadius: BorderRadius.circular(10),),
                              child: Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w600),)),
                            ),
                          ),
                         
                         ],
                         ),
                      
                    ),
                  ),
                 
                   GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text("Already have an account? Login",style: AppWidget.semiBoldTextFieldStyle(),)),
                ],),
              ),
              
           
        ],
      ),),
    );
  }
}