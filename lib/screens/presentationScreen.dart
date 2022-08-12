import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';

import 'AllClinicalScreen.dart';

class PresentScreen extends StatefulWidget {
  const PresentScreen({Key? key}) : super(key: key);

  @override
  State<PresentScreen> createState() => _PresentScreenState();
}
class _PresentScreenState extends State<PresentScreen> {
  final List<String> _listItem= [
    'images/medecin.png',
    'images/docteur.png',
    'images/docteur.png',
    'images/docteur.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.teal,),
        title: Text('Home',style: TextStyle(color: Colors.teal),),
      ),
      body: SafeArea(
        child: Container(
          padding:  EdgeInsets.all(20),
          child:Column(
            children:<Widget> [
              Container(
                height:250 ,
                width: 500,
                decoration:BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(10),
                  image:  DecorationImage(
                      image: AssetImage('images/croix.png'),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.1),
                        ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('Medical care',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)
                      ,SizedBox(height:50 ,)
                      ,Container(
                        height:50  ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),child: Center(
                        child: Text(
                          'Let go'
                        ),
                      ),
                      ),SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              Expanded(child:
              GridView.count(crossAxisCount: 2
                ,padding: EdgeInsets.all(30),

                crossAxisSpacing: 20,
                mainAxisSpacing: 20,

               children: <Widget>[
                  Container(
                      height:120 ,
                      width: 200,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.teal


                     /*  image: DecorationImage(
                           image: AssetImage( 'images/docteur.png',
                           ),
                           fit: BoxFit.cover)*/
                   ),
                      child: Center(
                        child: Text('Find Clinicals', style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                        ),),
                      )
                 ),
                 Container(
                   height:120 ,
                   width: 200,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),

                       color: Colors.teal
                   ),
                     child: Center(
                       child: ElevatedButton(
                         style:ElevatedButton.styleFrom(
                           elevation: 0,
                           primary: Colors.teal
                         ) ,
                         child: Text('All Clinicals', style: TextStyle(
                             color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                         ),),
                         onPressed: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllClinicalScreen()));
                         },

                       ),
                 ),
                 ),


               ],
               /* children: _listItem.map((item) => Card(
                  child: Container(
                    decoration: BoxDecoration(
borderRadius:                   BorderRadius.circular(10),

                        image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover)
                    ),
                  ),
                )).toList(),*/
              )
              )
            ],
          ) ,
        ),
      ),
    );
  }
}
