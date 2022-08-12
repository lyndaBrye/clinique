import 'package:clinique/screens/navdrawerScreen.dart';
import 'package:flutter/material.dart';

class AllClinicalScreen extends StatefulWidget {
  const AllClinicalScreen({Key? key}) : super(key: key);

  @override
  State<AllClinicalScreen> createState() => _AllClinicalScreenState();
}

class _AllClinicalScreenState extends State<AllClinicalScreen> {
  bool isSearching= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:
        !isSearching

            ? Text('Structure médicales')

            : TextField(

          onChanged: (value){
          },
          decoration: InputDecoration(
              hintText: 'search',
              icon:
              Icon(
                Icons.search,
                color: Colors.white,),

          ),
        ),

        backgroundColor: Colors.teal,

        actions: <Widget>[
          isSearching?

          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){

              setState((){
                this.isSearching=false;
              });
            }, )
              :IconButton( icon: Icon(
              Icons.search),
            onPressed: (){setState((){this.isSearching=true;});},
          )
        ],
      ),
      drawer: NavDrawer(),
      body: Center(

        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            GestureDetector(
              onTap: (){
                
              },
              child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white38,
                      backgroundImage: AssetImage('images/medecin.png') ,
                      radius: 28,

                    ),
                    title: Text('Clinique du pont de Gaulle'),
                    subtitle: Text('44444444444'),
                  ),
              ),

            ),GestureDetector(

              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white38,
                    backgroundImage: AssetImage('images/medecin.png') ,
                    radius: 28,

                  ),
                  title: Text(''),
                  subtitle: Text(''),
                ),
              ),

            ),GestureDetector(
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white38,
                    backgroundImage: AssetImage('images/medecin.png') ,
                    radius: 28,

                  ),
                  title: Text(''),
                  subtitle: Text(''),
                ),
              ),

            ),



          ],
        ),
      ),
    );
  }
}

