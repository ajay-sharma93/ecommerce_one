
import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.5),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
              child: Text(""),
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
                          SizedBox(height: 25.0,),
                          Text("Login",style: AppWidget.headlineTextFieldStyle(), ),
                          
                         TextField(
                            decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.email)),
                         ),
                         SizedBox(height: 25,),
                         TextField(
                          obscureText: true,
                            decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.lock)),
                         ),
                         SizedBox(height: 10,),
                        Container(
                        
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          alignment: Alignment.topRight,
                          child: Text("Forget Password?",style: AppWidget.lightTextFieldStyle(),)),
                          SizedBox(height: 5,),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(                                                   
                              width: MediaQuery.of(context).size.width,                        
                              decoration: BoxDecoration(color: Color(0xFFff5c30),borderRadius: BorderRadius.circular(10),),
                              child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w600),)),
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
                    child: Text("Don't have an account? Sign Up ",style: AppWidget.semiBoldTextFieldStyle(),)),
                ],),
              ),
              
           
        ],
      ),),
    );
  }
}