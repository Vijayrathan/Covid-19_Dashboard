import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Column(children:[RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'state');
          },
          child: Text('State-wise Statistics'),
        ),
          RaisedButton(
            onPressed: (){},
            child:Text('Representational Statistics')
          ),
          RaisedButton(
              onPressed: ()=>{},
              child:Text('Symptoms of Disease')
          )
      ])
      ),
    );
  }
}
