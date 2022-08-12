import 'package:clinique/screens/onbordingScreen.dart';
import 'package:clinique/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: page()
    );
  }
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    OnBoardingScreen(),
            )
        )
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[40],
      body:
      Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 100.0,
          ),
          child :Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset('images/croix.png',width: 200.0,height:200.0 ,),
              Center(
                  child: Text('Bienvenue', style: TextStyle(
                    color: Colors.white, fontSize: 19.0,fontWeight: FontWeight.bold,
                  ),)
              )
            ],
          ),
        ),

      ),
    );
  }
}
