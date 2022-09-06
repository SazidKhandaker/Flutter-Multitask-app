import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:multiapp1/BMI.dart';
import 'package:multiapp1/Calculator.dart';
import 'package:multiapp1/Home.dart';
import 'package:multiapp1/Weather.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _index=0;
  final pages=[
    Home(),
    Calculator(),
    BMI(),
    Weather(),

  ];
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          buttonBackgroundColor:Colors.indigo,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(seconds:1),
          backgroundColor: Colors.blueAccent,


          items: <Widget>[
            Icon(Icons.home,size: 30,),
            Icon(Icons.calculate_outlined , size: 30,),

            Icon(Icons.monitor_weight_outlined, size: 30),
            Icon(Icons.sunny_snowing, size: 30),

          ],

          onTap: (index) {
            setState(() {
              _index=index;
            });
            selectedItemColor: Colors.white;
            //Handle button tap
          },
        ),

        body: pages[_index],

      )
      );


  }
}
