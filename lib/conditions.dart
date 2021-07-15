import 'package:flutter/material.dart';
import './baseClass.dart';

class Conditions {
  final stateName;

  Conditions({this.stateName});

  Map<String, int> stateId = {
    'Andaman': 0,
    'AP': 1,
    'Arunachal': 2,
    'Assam': 3,
    'Bihar': 4,
    'Chandigarh': 5,
    'Chhattisgarh': 6,
    'Dadar': 7,
    'Delhi': 8,
    'Goa': 9,
    'GUJ': 10,
    'Haryana': 11,
    'Himachal': 12,
    'J & K': 13,
    'Jharkhand': 14,
    'KTK': 15,
    'KL': 16,
    'Ladakh': 17,
    'Lakshwadeep': 18,
    'MP': 19,
    'Maharashtra': 20,
    'Manipur': 21,
    'Megalaya': 22,
    'Mizoram': 23,
    'Nagaland': 24,
    'Odisha': 25,
    'Pondi': 26,
    'Punjab': 27,
    'RAJ': 28,
    'Sikkim': 29,
    'TN': 30,
    'Telangana': 31,
    'Tripura': 32,
    'Uttarakhand': 33,
    'UP': 34,
    'WB': 35
  };

  Future<Widget> conditionFn(context) async {
    if (stateName == 'Andaman') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'AP') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Arunachal') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Assam') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Bihar') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Chandigarh') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Chhattisgarh') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Dadar') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Delhi') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Goa') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'GUJ') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Haryana') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Himachal') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'J & K') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Jharkand') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'KTK') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'KL') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Ladakh') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Lakshwadeep') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'MP') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Maharashtra') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Manipur') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Megalaya') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Mizoram') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Nagaland') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Odisha') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Pondi') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Punjab') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'RAJ') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Sikkim') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'TN') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
                  stateName: stateName,
                  stateId: stateId[stateName],
                )),
      );
    } else if (stateName == 'Telangana') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Tripura') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'Uttarkhand') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'UP') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    } else if (stateName == 'WB') {
      await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BaseCls(
              stateName: stateName,
              stateId: stateId[stateName],
            )),
      );
    }
  }
}
