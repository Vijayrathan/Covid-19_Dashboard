import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
class Mizoram extends StatefulWidget {

  @override
  _MizoramState createState() => _MizoramState();
}

class _MizoramState extends State<Mizoram> {

  var data;
  var decodedData;
  String deaths='......';
  String confirmed = '.....';
  String discharged='.....';
  Timer timer;

  Future<void> getData()async {
    http.Response response = await http.get(
        'https://api.rootnet.in/covid19-in/stats/latest');
    print(response.statusCode);
    data = response.body;
    decodedData = jsonDecode(data);
    String confirmedData = decodedData['data']['regional'][23]['totalConfirmed'].toString();
    String deathsData=decodedData['data']['regional'][23]['deaths'].toString();
    String dischargedData=decodedData['data']['regional'][23]['discharged'].toString();
    print(confirmedData);
    displayData(confirmedData: confirmedData,death: deathsData,dischargedData: dischargedData);
  }
  void displayData({String confirmedData,String death,String dischargedData}){
    setState(() {
      confirmed = confirmedData;
      deaths=death;
      discharged=dischargedData;
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
            appBar: AppBar(title:Text('MIZORAM',style:TextStyle(fontSize: 25,color: Colors.white,)),
              backgroundColor: Colors.transparent,elevation: 0.0,
            ),
            extendBodyBehindAppBar: true,
            body:Container(decoration: BoxDecoration(
                image:DecorationImage(
                    image:AssetImage('images/backgroundapp.jpg'),
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.8),BlendMode.dstATop),
                    fit: BoxFit.cover
                )
            ),

                child: SafeArea(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[Center(child:Container(child:Text('Total Confirmed Cases:$confirmed',style: TextStyle(color: Colors.white,fontSize: 25),),
                          margin: EdgeInsets.all(25.0),
                          decoration:BoxDecoration(
                            color: Colors.black26,
                            border: Border.all(width: 15,color: Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                        )),
                          Center(child:Container(child:Text('Total Death Cases:  $deaths',style: TextStyle(color: Colors.white,fontSize: 25),),
                            margin: EdgeInsets.all(25.0),
                            decoration:BoxDecoration(
                                color:Colors.black26,
                                border: Border.all(width: 15,color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                          )),
                          Center(child:Container(child:Text('Total Discharged Cases:$discharged',style: TextStyle(color: Colors.white,fontSize: 25),),
                            margin: EdgeInsets.all(25.0),
                            decoration:BoxDecoration(
                                color:Colors.black26,
                                border: Border.all(width: 15,color: Colors.black26),
                                borderRadius: BorderRadius.all(Radius.circular(15))

                            ),
                          )),
                          Row(children:[Container(
                            child: IconButton (
                                icon:Icon(Icons.arrow_back),
                                color: Colors.pinkAccent,
                                onPressed:(){ Navigator.pushNamed(context,'first');}
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                shape: BoxShape.circle
                            ),
                          )
                          ])
                        ])
                )))
    );
  }
}