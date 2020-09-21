import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

    final pregunta = Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "How are you feeling today?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      )
    );
    final icono_maximo = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Icon(
        FontAwesomeIcons.laugh,
        size: 50,
      )
    );

    final icono_feliz = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Icon(
        FontAwesomeIcons.smile,
        size: 50,
      )
    );

    final icono_meh = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Icon(
        FontAwesomeIcons.meh,
        size: 50,
      )
    );

    final icono_triste = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Icon(
        FontAwesomeIcons.frown,
        size: 50,
      )
    );

    final barra_estado_animo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 30
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            icono_maximo,
            icono_feliz,
            icono_meh,
            icono_triste
          ],
        ),
      )
    );

    final submit_to_doctor = ButtonTheme(
      minWidth: 200,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: () {

        },
        child: Text(
            "Submit To a Doctor"
        )
      )
    );

    final submit_to_friend = ButtonTheme(
      minWidth: 200,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: () {

        },
        child: Text(
            "Submit To a Friend"
        )
      )
    );

    final submit_as_feedback = ButtonTheme(
      minWidth: 200,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: () {

        },
        child: Text(
            "Submit as Feedback"
        )
      )
    );

    final submit_to_all = ButtonTheme(
      minWidth: 200,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: () {

        },
        child: Text(
            "Submit To All"
        ),
      )
    );

    final button_set = Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            submit_to_doctor,
            submit_to_friend,
            submit_as_feedback,
            submit_to_all
          ],
        )
      )
    );

    final columna = Container(
      margin: EdgeInsets.only(
        top: 330
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            pregunta,
            barra_estado_animo,
            button_set
          ],
        )
      )
    );



    return Stack(
      children: <Widget>[
        appBarProfile,
        ListView(children: <Widget>[columna])
      ],
    );
  }
}

