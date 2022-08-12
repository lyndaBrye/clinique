import 'package:clinique/screens/loginScreen.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  child: Text('Get started'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScren()));
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
