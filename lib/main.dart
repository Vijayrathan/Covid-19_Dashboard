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
import 'package:syncfusion_flutter_maps/maps.dart';
import './baseClass.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first': (context) => Home(),
      'state': (context) => MyApp(),
      'andaman': (context) => Andaman(),
      'andhra': (context) => Andhra(),
      'arunachal': (context) => Arunachal(),
      'assam': (context) => Assam(),
      'bihar': (context) => Bihar(),
      'chandigarh': (context) => Chandigarh(),
      'chatisgarh': (context) => Chatisgarh(),
      'dadranagar': (context) => Dadra(),
      'delhi': (context) => Delhi(),
      'goa': (context) => Goa(),
      'gujarat': (context) => Gujarat(),
      'haryana': (context) => Haryana(),
      'himachal': (context) => Himachal(),
      'jammu': (context) => Jammu(),
      'jharkhand': (context) => Jharkhand(),
      'karnataka': (context) => Karnataka(),
      'kerala': (context) => Kerala(),
      'ladakh': (context) => Ladakh(),
      'madhya': (context) => Madhya(),
      'maharashtra': (context) => Maharastra(),
      'manipur': (context) => Manipur(),
      'meghalaya': (context) => Meghalaya(),
      'mizoram': (context) => Mizoram(),
      'nagaland': (context) => Nagaland(),
      'odisha': (context) => Odisha(),
      'puducherry': (context) => Puducherry(),
      'punjab': (context) => Punjab(),
      'rajasthan': (context) => Rajasthan(),
      'sikkim': (context) => Sikkim(),
      'tamilnadu': (context) => Tamilnadu(),
      'telangana': (context) => Telangana(),
      'tripura': (context) => Tripura(),
      'uttarakhand': (context) => Uttarkhand(),
      'uttarp': (context) => Uttarp(),
      'westbengal': (context) => Westbengal(),
      'symptoms': (context) => Symptoms(),
      'prevention': (context) => Prevention(),
      'creator': (context) => Creator(),
      'base':(context)=>BaseCls()
      
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
  List<Model> _data;
  MapShapeSource _mapSource;
  int selectedIndex = 1;

  @override
  void initState() {
    _data = const <Model>[
      Model('PONDICHERRY', Color.fromRGBO(255, 215, 0, 1.0), 'Pondi'),
      Model('PUNJAB', Colors.pinkAccent, 'Punjab'),
      Model('RAJASTHAN', Colors.deepPurple, 'RAJ'),
      Model('SIKKIM', Colors.yellow, 'Sikkim'),
      Model('TAMIL NADU', Colors.green, 'TN'),
      Model('TRIPURA', Colors.deepOrange, 'Tripura'),
      Model('LADAKH', Colors.greenAccent, 'Ladakh'),
      Model('Jammu AND Kashmir', Colors.lightBlue, 'J & K'),
      Model('ANDAMAN AND NICOBAR ISLANDS', Colors.pinkAccent, 'Andaman'),
      Model('ANDHRA PRADESH', Colors.deepPurple, 'AP'),
      Model('ARUNACHAL PRADESH', Colors.green, 'Arunachal'),
      Model('ASSAM', Colors.lightBlue, 'Assam'),
      Model('BIHAR', Colors.deepPurple, 'Bihar'),
      Model('CHANDIGARH', Colors.yellow, 'Chandigarh'),
      Model('DELHI', Colors.deepOrange, 'Delhi'),
      Model('GOA', Colors.indigoAccent, 'Goa'),
      Model('GUJARAT', Colors.pink, 'GUJ'),
      Model('HARYANA', Colors.green, 'Haryana'),
      Model('HIMACHAL PRADESH', Colors.deepPurple, 'Himachal'),
      Model('KARNATAKA', Colors.limeAccent, 'KTK'),
      Model('KERALA', Colors.redAccent, 'KL'),
      Model('LAKSHADEEP', Colors.deepPurple, 'Lakshwadeep'),
      Model('MADHYA PRADESH', Colors.pink, 'MP'),
      Model('MAHARASHTRA', Colors.yellow, 'Maharashtra'),
      Model('MANIPUR', Colors.greenAccent, 'Manipur'),
      Model('MEGHALAYA', Colors.red, 'Megalaya'),
      Model('MIZORAM', Colors.pink, 'Mizoram'),
      Model('NAGALAND', Colors.indigo, 'Nagaland'),
      Model('ODISHA', Colors.greenAccent, 'Odisha'),
      Model('UTTAR PRADESH', Colors.blue, 'UP'),
      Model('WEST BENGAL', Colors.pinkAccent, 'WB'),
      Model('DADAR AND NAGAR HAVELI', Colors.redAccent, 'Dadar'),
      Model('DAMAN AND DIU', Colors.cyanAccent, 'Daman'),
      Model('TELANGANA', Colors.redAccent, 'Telangana'),
      Model('Jharkhand', Colors.indigo, 'Jharkand'),
      Model('Chhattisgarh', Colors.pink, 'Chhattisgarh'),
      
    ];

    _mapSource = MapShapeSource.asset(
      'images/INDIA_STATES.json',
      shapeDataField: 'STATE',
      dataCount: _data.length,
      primaryValueMapper: (int index) => _data[index].state,
      dataLabelMapper: (int index) => _data[index].stateCode,
      shapeColorValueMapper: (int index) => _data[index].color,
    );
    super.initState();
  }

  stateButton({stateName}) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SfMaps(
        layers: <MapShapeLayer>[
          MapShapeLayer(
            source: _mapSource,
            showDataLabels: true,
            legend: null,
            tooltipSettings: MapTooltipSettings(
                color: Colors.grey[700],
                strokeColor: Colors.white,
                strokeWidth: 2),
            selectedIndex: selectedIndex,
            onSelectionChanged: (int index) {
              setState(() {
                selectedIndex = index;
              });
              stateName=_data[index].stateCode;
              Conditions condition=new Conditions(stateName: stateName);
              condition.conditionFn(context);
              //Navigator.pushNamed(context, 'punjab');
            },
            strokeColor: Colors.white,
            strokeWidth: 0.5,
            shapeTooltipBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _data[index].stateCode,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
            dataLabelSettings: MapDataLabelSettings(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.caption.fontSize)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
                child: ListView(padding: EdgeInsets.zero, children: <Widget>[
              DrawerHeader(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 30),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  'SYMPTOMS',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'symptoms');
                },
              ),
              ListTile(
                title: Text('PREVENTION',
                    style: TextStyle(fontSize: 22, color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, 'prevention');
                },
              ),
              ListTile(
                title: Text('ABOUT CREATOR',
                    style: TextStyle(fontSize: 22, color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, 'creator');
                },
              ),
            ])),
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Covid-19 Dashboard"),
              centerTitle: true,
              elevation: 50.0,
              backgroundColor: Colors.deepPurple,
            ),
            body: Container(
              padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: stateButton(stateName: stateName),
            )));
  }
}

class Model {
  /// Initialize the instance of the [Model] class.
  const Model(this.state, this.color, this.stateCode);

  /// Represents the Australia state name.
  final String state;

  /// Represents the Australia state color.
  final Color color;

  /// Represents the Australia state code.
  final String stateCode;
}
