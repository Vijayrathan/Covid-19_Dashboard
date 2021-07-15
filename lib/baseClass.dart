import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
import './Design.dart';
import './conditions.dart';


 class BaseCls extends StatefulWidget {
  BaseCls({this.stateName,this.stateId});
  final stateName;
  final stateId;
  @override
  _BaseClsState createState() => _BaseClsState();
}

class _BaseClsState extends State<BaseCls> {

  var data;
  var decodedData;
  String deaths = '......';
  String confirmed = '.....';
  String discharged = '.....';
  Timer timer;
  Conditions conditions=Conditions(stateName: null);

  Future<void> getData() async {
    http.Response response =
    await http.get('https://api.rootnet.in/covid19-in/stats/latest');
    print(response.statusCode);
    data = response.body;
    decodedData = jsonDecode(data);
    print(widget.stateId);
    String confirmedData =
    decodedData['data']['regional'][widget.stateId]['totalConfirmed'].toString();
    String deathsData =
    decodedData['data']['regional'][widget.stateId]['deaths'].toString();
    String dischargedData =
    decodedData['data']['regional'][widget.stateId]['discharged'].toString();
    print(confirmedData);
    displayData(
        confirmedData: confirmedData,
        death: deathsData,
        dischargedData: dischargedData);
  }

  void displayData(
      {String confirmedData, String death, String dischargedData}) {
    setState(() {
      confirmed = confirmedData;
      deaths = death;
      discharged = dischargedData;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Design design=Design(confirmed,discharged,deaths);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('COVID STATS OF ${widget.stateName}',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontStyle: FontStyle.italic
                  )),
              backgroundColor: Colors.transparent,
              elevation: 0.0,

            ),
            extendBodyBehindAppBar: true,
            body: Padding(
              padding: EdgeInsets.all(1),
              child:design.design() ,
            )));
  }
}


