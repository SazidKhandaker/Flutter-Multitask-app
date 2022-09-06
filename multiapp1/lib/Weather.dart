import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multiapp1/Calculator.dart';
class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String smily="🥵";
  var degree=45;
 Color backgroundcolor=Colors.red;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          title: Text("Weather"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget> [
              Text(smily,style: TextStyle(fontSize: 110),

              ),
              const SizedBox(height: 10,),
              Text('$degree ℃',style: TextStyle(fontSize: 80,color:Colors.white),),
              SizedBox(height:10),

             TextButton(
               child: Text("⭐️ Change Weather",
               style: TextStyle(fontSize: 24,color:Colors.white) ,),
               onPressed:changeweather,
             ),
         ] ),
        ),
      ),

      );


}
  void changeweather(){
     final counter=Random().nextInt(6);
     setState(() {
       switch(counter){
      case 0:
         smily="🥶 ";
         degree=nextNumber(min :-20,max:0);
       backgroundcolor=Colors.blueAccent;
          break;
         case 1:
           smily="🥵";
         degree=nextNumber(min :30,max:48);
          backgroundcolor=Colors.red;
           break;
         case 2:
           smily="❄️";
           degree=nextNumber(min :-3,max:5);
           backgroundcolor=Colors.blueAccent;
           break;
         case 3:
           smily="☔️";
           degree=nextNumber(min :6,max:19);
           backgroundcolor=Colors.purple;
           break;
         case 4:
           smily="🌤 ";
           degree=nextNumber(min :20,max:29);
           backgroundcolor=Colors.orange;
           break;

      }

     });
}
 int nextNumber({required int min,required int max})=>
   min+Random().nextInt(max - min +1);
  }




//void changeweather(){
//     final counter=Random().nextInt(2);
//     setState(() {
//       switch(counter){
//      case 0:
//         String smily="🥵";
//         var degree=nextNumber(min :-20,max:0);
//         Color backgroundcolor=Colors.black12;
//          break;
//         case 1:
//           String smily="🥵";
//           var degree=nextNumber(min :1,max:13);
//           Color backgroundcolor=Colors.black12;
//           break;
//       }
//
//     });
// }
// int nextNumber({required int min,required int max})=>
//     min+Random().nextInt(max - min +1);