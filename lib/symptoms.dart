
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            elevation: 50.0,
            backgroundColor: Colors.black45,
            bottom:PreferredSize(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 80.0, 16.0),
                child: Text(
                  'IF ANY OF THE FOLLOWING SYMPTOMS EXIST,PLEASE QUARANTINE YOURSELF',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
              preferredSize: Size(0.0, 80.0),
            ),
          ),
        body:SafeArea(
            child:Container(
            decoration: BoxDecoration(
          border:Border.all(width: 1),
            image:DecorationImage(
                image:AssetImage('images/corona1.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.8),BlendMode.dstATop),
                fit: BoxFit.cover
            )
        ),

           child: null
            )),
    ));
  }
}
class Prevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar: AppBar(
              elevation: 50.0,
              backgroundColor: Colors.black,
              bottom: PreferredSize(child: Text('IF ANY OF THE FOLLOWING SYMPTOMS EXIST,PLEASE QUARANTINE YOURSELF'),preferredSize: Size.fromHeight(70.0)),
            ),
        body:SafeArea(child:Container(decoration: BoxDecoration(
          border: Border.all(width: 1),
            image:DecorationImage(
                image:AssetImage('images/corona2.jpg'),
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.8),BlendMode.dstATop),
                fit: BoxFit.cover
            )
        ),
            child: null
        ))
    ));
  }
}
class Creator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title:Center(child: Text(
            "Profile ",
            style: TextStyle(fontSize: 30.0,color: Colors.white),
          )),
    ),extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/meee.jpeg'),
                ),
                Text(
                  'VIJAYRATHAN KARTHIKEYAN',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceSansPro',
                    fontSize: 30,
                  ),
                ),
                InkWell(
                  child: RaisedButton(
                    color:Colors.pinkAccent,
                    child: Row(children:[
                      Icon(Icons.account_circle),
                      Text('Instagram')]),
                    onPressed: ()=>{},
                  ),
                  onTap: () => launch(
                      'https://www.instagram.com/i_vijayrathan_/?hl=en'),
                ),
                InkWell(
                  child: RaisedButton(
                    color:Colors.blueAccent,
                    child: Row(children:[
                      Icon(Icons.account_circle),
                      Text('Facebook')]),
                    onPressed: ()=>{},
                  ),
                  onTap: () => launch(
                      'https://www.facebook.com/vijay.rathan.7/'),
                ),
                InkWell(
                  child: RaisedButton(
                    color:Colors.indigo,
                    child: Row(children:[
                      Icon(Icons.account_circle),
                          Text('LinkedIn')]),
                    onPressed: ()=>{},
                  ),
                  onTap: () => launch(
                      'https://www.linkedin.com/in/vijayrathan-karthikeyan/'),
                ),
                  InkWell(
                  child: Text(
                  'For more apps click here',
                  style: TextStyle(color: Colors.blue,fontSize: 23),
                ),
            onTap: () => launch(
                'https://drive.google.com/drive/folders/1w8tTo8D0Ok1F9KX5jsmWtrM5oTaGnGbI'),
          ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



