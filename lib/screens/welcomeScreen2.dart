import 'package:flutter/material.dart';

class WelcomeScreen2 extends StatefulWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen2> createState() => _WelcomeScreen2State();
}

class _WelcomeScreen2State extends State<WelcomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

              Image.asset('images/medecin.png',width: 200.0,height:200.0 ,),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(20)),
                  child: Text('Cherchez vous la clinique la lus proche de vous?'),
                  onPressed: () {
                  },
                ),

              )
            ],
          ),
        ),

      ),
    );

  }
}
