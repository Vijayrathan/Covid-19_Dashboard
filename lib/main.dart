
import 'package:databoard/andaman.dart';
import 'package:databoard/symptoms.dart';
import 'conditions.dart';
import 'package:flutter/material.dart';
import 'andaman.dart';
import 'Andhrapradhesh.dart';
import 'arunachal.dart';
import 'Assam.dart';
import 'bihar.dart';
import 'Chandigarh.dart';
import 'Chatisgarh.dart';
import 'dadranagar.dart';
import 'delhi.dart';
import 'Goa.dart';
import 'Gujarat.dart';
import 'Haryana.dart';
import 'Himachal.dart';
import 'Jammu.dart';
import 'Jharkhand.dart';
import 'Karnataka.dart';
import 'Kerala.dart';
import 'Ladakh.dart';
import 'MadhyaP.dart';
import 'Maharashtra.dart';
import 'Manipur.dart';
import 'Meghalaya.dart';
import 'Mizoram.dart';
import 'Nagaland.dart';
import 'Odisha.dart';
import 'Puducherry.dart';
import 'Punjab.dart';
import 'Rajasthan.dart';
import 'Sikkim.dart';
import 'Tamilnadu.dart';
import 'Telangana.dart';
import 'Tripura.dart';
import 'Uttarakhand.dart';
import 'Uttarpradesh.dart';
import 'Westbengal.dart';
import './home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first': (context) => Home() ,
      'state':(context)=> MyApp(),
      'andaman': (context) => Andaman(),
      'andhra':(context)=>Andhra(),
      'arunachal':(context)=>Arunachal(),
      'assam':(context)=>Assam(),
      'bihar':(context)=>Bihar(),
      'chandigarh':(context)=>Chandigarh(),
      'chatisgarh':(context)=>Chatisgarh(),
      'dadranagar':(context)=>Dadra(),
      'delhi':(context)=>Delhi(),
      'goa':(context)=>Goa(),
      'gujarat':(context)=>Gujarat(),
      'haryana':(context)=>Haryana(),
      'himachal':(context)=>Himachal(),
      'jammu':(context)=>Jammu(),
      'jharkhand':(context)=>Jharkhand(),
      'karnataka':(context)=>Karnataka(),
      'kerala':(context)=>Kerala(),
      'ladakh':(context)=>Ladakh(),
      'madhya':(context)=>Madhya(),
      'maharashtra':(context)=>Maharastra(),
      'manipur':(context)=>Manipur(),
      'meghalaya':(context)=>Meghalaya(),
      'mizoram':(context)=>Mizoram(),
      'nagaland':(context)=>Nagaland(),
      'odisha':(context)=>Odisha(),
      'puducherry':(context)=>Puducherry(),
      'punjab':(context)=>Punjab(),
      'rajasthan':(context)=>Rajasthan(),
      'sikkim':(context)=>Sikkim(),
      'tamilnadu':(context)=>Tamilnadu(),
      'telangana':(context)=>Telangana(),
      'tripura':(context)=>Tripura(),
      'uttarakhand':(context)=>Uttarkhand(),
      'uttarp':(context)=>Uttarp(),
      'westbengal':(context)=>Westbengal(),
      'symptoms':(context)=>Symptoms(),
      'prevention':(context)=>Prevention(),
      'creator':(context)=>Creator()
    },
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var place;
  String stateName;
  @override
  void initState() {
    super.initState();
  }
  stateButton({stateName}){
    return
      FlatButton(
        child:Text(stateName,style:TextStyle(fontSize: 28,color: Colors.black),) ,
        color:Colors.white,
        padding: EdgeInsets.all(12.0),
        onPressed:(){
          Conditions conditions=Conditions(stateName);
          conditions.conditionFn(context);
          } ,
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
                child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                  DrawerHeader(
                    child: Text('',style: TextStyle(fontSize: 30),),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('SYMPTOMS',style: TextStyle(fontSize: 22,color:Colors.black ),),
                    onTap: () {
                      Navigator.pushNamed(context,'symptoms');
                    },
                  ),
                  ListTile(
                    title: Text('PREVENTION',style: TextStyle(fontSize: 22,color:Colors.black )),
                    onTap: () {
                      Navigator.pushNamed(context,'prevention');
                    },
                  ),
                  ListTile(
                    title: Text('ABOUT CREATOR',style: TextStyle(fontSize: 22,color:Colors.black )),
                    onTap: () {
                      Navigator.pushNamed(context,'creator');
                    },
                  ),
                ])),
            backgroundColor: Colors.black54,
            appBar: AppBar(
              title:Center(child:Text("COVID-19 DASHBOARD")),
              elevation: 50.0,
              backgroundColor: Colors.black,
              bottom: PreferredSize(child:Text('State-Wise Database',style:TextStyle(fontSize: 20,color: Colors.lightGreen),), preferredSize: Size.fromHeight(70.0)),
            ),
            body:ListView(
                children:
                [
                  stateButton(stateName:'Andhra Pradhesh'),
                  stateButton(stateName:'Arunachal Pradesh'),
                  stateButton(stateName:'Assam'),
                  stateButton(stateName:'Bihar'),
                  stateButton(stateName:'Chhattisgarh'),
                  stateButton(stateName:'Delhi'),
                  stateButton(stateName:'Goa'),
                  stateButton(stateName:'Gujarat'),
                  stateButton(stateName:'Haryana'),
                  stateButton(stateName:'Himachal Pradesh'),
                  stateButton(stateName:'Jammu & Kashmir'),
                  stateButton(stateName:'Jharkhand'),
                  stateButton(stateName:'Karnataka'),
                  stateButton(stateName:'Kerala'),
                  stateButton(stateName:'Madhya Pradesh'),
                  stateButton(stateName:'Maharashtra'),
                  stateButton(stateName:'Manipur'),
                  stateButton(stateName:'Meghalaya'),
                  stateButton(stateName:'Mizoram'),
                  stateButton(stateName:'Nagaland'),
                  stateButton(stateName:'Odisha'),
                  stateButton(stateName:'Punjab'),
                  stateButton(stateName:'Rajasthan'),
                  stateButton(stateName:'Sikkim'),
                  stateButton(stateName:'Tamil Nadu'),
                  stateButton(stateName:'Telangana'),
                  stateButton(stateName:'Tripura'),
                  stateButton(stateName:'Uttar Pradesh'),
                  stateButton(stateName:'Uttarakhand'),
                  stateButton(stateName:'West Bengal'),
                  stateButton(stateName:'Andaman and Nicobar Islands'),
                  stateButton(stateName:'Chandigarh'),
                  stateButton(stateName:'Dadra and Nagar Haveli'),
                  stateButton(stateName:'Puducherry'),

                ]
            )
        ));
  }
  }






