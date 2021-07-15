import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';


class Design  {
  final confirmed;
  final deaths;
  final discharged;
  Design(this.confirmed,this.discharged,this.deaths);
  Widget design(){
    final List<String> titles = [
      "Confirmed\n\n $confirmed",
      "Deaths\n $deaths",
      "Discharged\n $discharged",
    ];
    final List<Widget> images = [
      Container(
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];

    return Scaffold(
     appBar: AppBar(centerTitle: true,backgroundColor: Colors.deepPurple,),
      body: Padding(
        padding: EdgeInsets.all(1),
        child: SafeArea(
          child: Container(
              child: VerticalCardPager(
                textStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                titles: titles,
                images: images,
                onPageChanged: (page) {},
                align: ALIGN.CENTER,
                onSelectedItem: (index) {},
              ),
            ),
          ),
      ),
    );


  }

}
