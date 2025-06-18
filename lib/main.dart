// ignore: unused_import
import 'package:ecommerce/pages/bottom_navigator.dart';
// ignore: unused_import
import 'package:ecommerce/pages/home.dart';
// ignore: unused_import
import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/pages/onboard_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: OnboardScreen(),
    );
  
  }
}

