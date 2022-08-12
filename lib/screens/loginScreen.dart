import 'package:clinique/screens/AllClinicalScreen.dart';
import 'package:clinique/screens/presentationScreen.dart';
import 'package:flutter/material.dart';
class LoginScren extends StatefulWidget {
  const LoginScren({Key? key}) : super(key: key);

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              width: 100.0,
              height: 100.0,         ),
          CircleAvatar(backgroundColor: Colors.teal[50],),
          // Image.asset('images/user.png',width: 200.0,height:200.0 ,),
            Text('Your informations', style: TextStyle( color: Colors.black54, fontWeight: FontWeight.bold
                ,fontSize: 30.0 ), ),
            SizedBox(
              width: 20.0,
              height: 30.0,          ),
            Text('please confirm your informations'),
            TextField(
              decoration: InputDecoration(

                labelText: 'Name',
                labelStyle: TextStyle(
                    color: Colors.black54
                ),
                border: OutlineInputBorder(

                ),
              ),

            ),
            SizedBox(
              width: 20.0,
              height: 30.0,          ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Number',
                  labelStyle: TextStyle(
                      color: Colors.black54
                  ),
                  border: OutlineInputBorder(

                  )
              ),

            ),
            SizedBox(
              width: 20.0,
              height: 30.0,          ),

            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PresentScreen()));
              },
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text("Click This",style: TextStyle(
                color: Colors.white
              ),),
            ),


          ],
        ),
      )
    );
  }
}
