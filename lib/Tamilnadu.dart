import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';
import './Design.dart';

class Tamilnadu extends StatefulWidget {
  @override
  _TamilnaduState createState() => _TamilnaduState();
}

class _TamilnaduState extends State<Tamilnadu> {
  var data;
  var decodedData;
  String deaths = '......';
  String confirmed = '.....';
  String discharged = '.....';
  Timer timer;

  Future<void> getData() async {
    http.Response response =
        await http.get('https://api.rootnet.in/covid19-in/stats/latest');
    print(response.statusCode);
    data = response.body;
    decodedData = jsonDecode(data);
    String confirmedData =
        decodedData['data']['regional'][30]['totalConfirmed'].toString();
    String deathsData =
        decodedData['data']['regional'][30]['deaths'].toString();
    String dischargedData =
        decodedData['data']['regional'][30]['discharged'].toString();
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
              title: Text('TAMIL NADU',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
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
