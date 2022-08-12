import 'package:clinique/screens/welcomeScreen.dart';
import 'package:clinique/screens/welcomeScreen2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'loginScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller=PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller ,
              onPageChanged: (index){
                setState((){
                  onLastPage = (index==2);

                });
              },
              children: [
                WelcomeScreen2(),
                WelcomeScreen(),


              ],
            ),
            Container(
                alignment: Alignment(0,100),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                    children: <Widget>[


                    //skip
                    GestureDetector(
                      onTap:(){
                        _controller.jumpToPage(2);

                      },
                      child:Text(''),

                    ),
                    //pagination
                    SmoothPageIndicator(controller: _controller, count:2,axisDirection: Axis.horizontal, ),
                    //
                    onLastPage
                        ? GestureDetector(
                      child:Text('done')
                      ,onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return LoginScren();
                      }));


                    },

                    ):
                    GestureDetector(
                      child:Text('')
                      ,onTap:(){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                    },

                    )
                    ,
                  ],
                )
            )
          ],
        )
    );

  }
}
