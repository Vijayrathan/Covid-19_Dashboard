import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Covid-19 Dashboard"),
            backgroundColor: Colors.deepPurple.withOpacity(controller.value),
          ),
          backgroundColor: Colors.white.withOpacity(controller.value),
          body: ListView(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Stack(children: [
                      RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Image(
                            image: AssetImage('images/statePic.jpg'),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'state');
                        },
                        color: Colors.pinkAccent.shade400,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "State-wise Stats",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Stack(children: [
                      RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                          child: Image(
                            image: AssetImage('images/chart.jpg'),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'state');
                        },
                        color: Colors.pinkAccent.shade400,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Representational Stats",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Stack(children: [
                      RaisedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                          child: Image(
                            image: AssetImage('images/symp.jpg'),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'state');
                        },
                        color: Colors.pinkAccent.shade400,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Symptoms",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                  ),
                ]),
          ])),
    );
  }
}
