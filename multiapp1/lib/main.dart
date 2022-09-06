import 'package:flutter/material.dart';
import 'package:multiapp1/LoginPage.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Login(),
    );

  }
}
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body:
        ListView(
          children:<Widget> [
            SizedBox(height: 30,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                   CircleAvatar(
                      radius:70.0,
                      backgroundImage:NetworkImage('https://scontent.fdac13-1.fna.fbcdn.net/v/t1.6435-9/86746721_1498235787018509_1135729862917488640_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEdU7n979vaaTNh2mfKiTY2zziV8Dnz5QvPOJXwOfPlC5TQlieawXigVhcuCVsAEj0klQvJJIQVoMD3av6Gqqxx&_nc_ohc=FAcBS38it0AAX-mmM17&tn=lPCAUVpcKNcxXNQw&_nc_ht=scontent.fdac13-1.fna&oh=00_AT8IN2ZhJjjx2yGV5rqjF9XI_AbV8OlZlmqSnqzbZZyJKQ&oe=632363E8'),
                    backgroundColor: Colors.transparent,

                  ),
                   Icon(Icons.android_outlined,size: 80,),

                  SizedBox(height: 30,),

                  Text("Welcome !!",style:TextStyle(fontWeight: FontWeight.bold,fontSize:
                  36,
                  ) ,),
                  SizedBox(height: 24,),
                  Text("Thank you for come to our page  !!",style:TextStyle(fontWeight: FontWeight.w700 ,fontSize: 19,
                  ) ,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //Email Filed
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0

                  ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.brown),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),

                      )

                  ),
                  SizedBox(height: 20,),
                  //Password field

                  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0

                  ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.brown),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',

                            ),

                          ),
                        ),

                      )

                  ),
                  SizedBox(height: 20,),

                  Padding(padding: const EdgeInsets.symmetric(horizontal:21.0),

                    child: Container(
                        padding: EdgeInsets.all(30),
                        decoration:BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)) ,

                        child:Center(
                          child: Text('Sign in', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18), ),

                        )

                    ),

                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text("Not a member?",style:TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15
                      ) ,),
                      Text("Register Now ",style:TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15,
                          color: Colors.blue ),

                      ),
                    ],
                  )
                ],

              ),

            ),
            SizedBox(height: 20,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: RaisedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },child: Text('Nextpage',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 15),),
              color:Colors.cyan,
              hoverColor: Colors.amber,
            ),
            ),


          ],

        ) ,
      ),

    );
  }
}

