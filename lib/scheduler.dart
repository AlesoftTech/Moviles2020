import 'package:f412/f412_class.dart';
import 'package:f412/home_f412.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Scheduler extends StatelessWidget{




  @override
  Widget build(BuildContext context) {

    final atras = Material(
        child: InkWell(
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.blueAccent,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return F412Class();
              }));
            }
        ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[

        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blueAccent
        ),
        title: Text(
            "Scheduler",
          style: TextStyle(
            color: Colors.blueAccent
          ),
        ),
      ),
    );

  }

}