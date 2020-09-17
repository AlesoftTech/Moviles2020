import 'package:f412/home_f412.dart';
import 'package:f412/profile_f412.dart';
import 'package:flutter/material.dart';

class F412Class extends StatefulWidget{
  F412Class();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _F412Class();
  }
}

class _F412Class extends State<F412Class>{
  @override
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeF412(),
    ProfileF412()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.blueAccent
          ),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items:[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("")
                ),
              ]
          ),
        ),
      );
    }
  }


