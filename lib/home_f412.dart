import 'package:flutter/material.dart';

class HomeF412 extends StatelessWidget {
  String pathImage = "assets/img/yo.jpg";


  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // TODO: implement build

    final photo = Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
            top: 50.0,
            left: 10.0,
            right: 20
        ),

        width: 50.0,
        height: 50.0,

        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(pathImage)
            ),
            boxShadow: <BoxShadow>[
        BoxShadow(
        color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
        )
          ]
        ),

      ),
    );

    final hola = Container(
      margin: EdgeInsets.only(
          top: 60,
          left: 20.0
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Hola.",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),
        ),
      )
    );

    final nombre = Container(
      margin: EdgeInsets.only(
          top: 0,
          left: 20,
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Alejandro!",
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold
          ),
        ),
      )
    );
    final banner = InkWell(
      child: Container(
        height: 150.0,
        width: width,
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0)
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 35.0
              ),
              height: 150,
              width: 200,
              child: Column(
                children: <Widget>[
                  Expanded(child: Text(
                    "Tú salúd mental es muy importante.",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  )),
                  Expanded(child: Text(
                    "Sí tienes una emergencia psiquiatrica clicka aquí.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                    ),
                  ))
                ],
              ),
              alignment: Alignment.topLeft,
            ),
            Container(
              child: Expanded(child: Image(
                  image: AssetImage("assets/img/bannerimagedef.png"))),

            ),
          ],
        )
      ),
      onTap: (){
        print("Tapped on Container");
      },
    );

    final pastillero = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              margin: EdgeInsets.only(
                  top: 20
              ),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.watch_later, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Pastillero");
          },
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10
          ),
          child: Text(
              "Pastillero",
            style: TextStyle(
              fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );

    final diario = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              margin: EdgeInsets.only(
                  top: 20
              ),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.import_contacts, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Diario");
          },
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: Text(
            "Diario",
            style: TextStyle(
                fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );
    final trastornos = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              margin: EdgeInsets.only(
                  top: 20
              ),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.library_books, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Trastornos");
          },
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: Text(
            "Trastornos",
            style: TextStyle(
                fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );

    final farmacos = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.blur_on, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Farmacos");
          },
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: Text(
            "Farmacos",
            style: TextStyle(
                fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );


    final clinicas = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.local_hospital, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Clinicas");
          },
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: Text(
            "Clinicas",
            style: TextStyle(
                fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );

    final doctores = Column(
      children: <Widget>[
        InkWell(
          child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 7.0)
                    )
                  ]
              ),

              child: Icon(Icons.person_pin, color: Colors.deepOrangeAccent, size: 30.0)
          ),
          onTap: (){
            print("Doctores");
          },
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: Text(
            "Doctores",
            style: TextStyle(
                fontWeight: FontWeight.normal
            ),
          ),
        )
      ],
    );


    final servicios1 = Container(
      width: width,
      margin: EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: pastillero)),
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: diario)),
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: trastornos)),
          //Flexible(child: pastillero, fit: FlexFit.tight),
          //Flexible(child: diario, fit: FlexFit.tight),
         // Flexible(child: trastornos, fit: FlexFit.tight),
        ],
      ),
    );

    final servicios2 = Container(
      width: width,
      margin: EdgeInsets.only(
        left: 20,
        right: 20
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: farmacos)),
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: clinicas)),
          Expanded(child: FittedBox(fit: BoxFit.scaleDown, child: doctores)),
          //Flexible(child: farmacos, fit: FlexFit.tight)
          //Flexible(child: clinicas, fit: FlexFit.tight),
          //Flexible(child: doctores, fit: FlexFit.tight),
        ],
      ),
    );





    final servicios = Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 20,
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Servicios:",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0
          ),
        ),
      ),
    );


    final upPart = Container(
      child: Column(
        children: <Widget>[
          photo,
          hola,
          nombre,
          banner
        ],
      ),
    );

    final downPart = Container(
      width: width,
      child: Column(
        children: <Widget>[
          servicios,
          servicios1,
          servicios2
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            upPart,
            downPart
          ],
        )
      ],
    );
  }
}