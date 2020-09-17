import 'package:flutter/material.dart';
import 'MyClipper.dart';

class ProfileF412 extends StatelessWidget{
  String pathImage = "assets/img/yo.jpg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final clipper = new MyClippler();


    final photo = Container(
      width: 120,
      height: 120,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.white,
                blurRadius: 15.0,
            )
          ]
      ),

    );


    final appBarProfile = Column(
      children: <Widget>[
        ClipPath(
          clipper: clipper,
          child: Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  photo,
                  Container(
                    margin: EdgeInsets.only(
                      top: 20
                    ),
                    child: Text(
                      "Alejandro Solano",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        ),
      ],
    );

    return Container(
      child: appBarProfile,
    );
  }
}

