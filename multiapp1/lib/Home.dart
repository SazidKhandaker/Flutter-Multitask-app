import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/src/widgets/framework.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor:Colors.indigo,

          appBar: AppBar(
        centerTitle: true,
            title: Text("Welcome To This App"),
            titleSpacing: 00.0,

            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
            ),
            elevation: 0.00,
            backgroundColor: Colors.black12,

          ),

          body: Center(


           child: ListView(

             children:<Widget> [
    Container(
    margin: const EdgeInsets.only(top: 8),
    child: Text(
    'This App  contains with',
    style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w400,
    color: Colors.deepOrangeAccent,
    ),
    ),

    ),
         SizedBox(height: 10,),
               Text(
                'Calculator',
                 style: TextStyle(
                   fontSize: 40,
                   color: Colors.grey[300],

                 ),
                 textAlign: TextAlign.center,
               ),
               SizedBox(height: 10,),
               Text(
                 'BMI',
                 style: TextStyle(
                   fontSize: 40,
                   color: Colors.grey[300],

                 ),
                 textAlign: TextAlign.center,
               ),
               SizedBox(height: 10,),
               Text(
                 'Weather App',
                 style: TextStyle(
                   fontSize: 40,
                   color: Colors.grey[300],

                 ),
                 textAlign: TextAlign.center,
               ),
               SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [

               CircleAvatar(
                 radius:75.0,
                 backgroundImage:NetworkImage('https://scontent.fdac13-1.fna.fbcdn.net/v/t1.6435-9/86746721_1498235787018509_1135729862917488640_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEdU7n979vaaTNh2mfKiTY2zziV8Dnz5QvPOJXwOfPlC5TQlieawXigVhcuCVsAEj0klQvJJIQVoMD3av6Gqqxx&_nc_ohc=FAcBS38it0AAX-mmM17&tn=lPCAUVpcKNcxXNQw&_nc_ht=scontent.fdac13-1.fna&oh=00_AT8IN2ZhJjjx2yGV5rqjF9XI_AbV8OlZlmqSnqzbZZyJKQ&oe=632363E8'),
                 backgroundColor: Colors.transparent,

               ),


             ],

             ),
               SizedBox(height: 25),
               Icon(Icons.yard_outlined,size: 100,) ,
               SizedBox(height: 10,),
               Padding(padding: const EdgeInsets.symmetric(horizontal: 100.0),
                 child:  Builder(
                   builder: (BuildContext con) => RaisedButton(onPressed: (){
                     Scaffold.of(con).showSnackBar(SnackBar(
                       content: Text('Welcome Dear User'),
                       duration: Duration(seconds: 12),
                       action: SnackBarAction(label: "OK", onPressed: (){}),
                     ));

                   },child: Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15,)),),

                 ),
          ),


             ],
           ),


          ),

    )
    );

  }
}
//Flutter toaster
// Fluttertoast.showToast(msg: "Welcome To This App",
//                toastLength: Toast.LENGTH_LONG,
//                   backgroundColor: Colors.redAccent,
//                   textColor: Colors.white,
//                   gravity: ToastGravity.CENTER,
//                 );