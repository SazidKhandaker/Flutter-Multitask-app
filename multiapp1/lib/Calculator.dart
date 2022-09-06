import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}



class _CalculatorState extends State<Calculator> {
  var equ="0";
  var result="0";
  var expression="";
  var forntsize=38.0;
  var resultsize=48.0;
   buttonPress(String button_text){
setState(() {

  if(button_text =='AC'){
  equ="";
  result='';
  }else if(button_text=='='){
    forntsize=38.0;
    resultsize=48.0;
    expression=equ;
    expression=expression.replaceAll('×', '*');
    expression=expression.replaceAll('÷', '/');
    try{
      Parser p =new Parser();
      Expression exp=p.parse(expression);
      ContextModel cm =ContextModel();
      result='=${exp.evaluate(EvaluationType.REAL, cm)}';
    }catch( e){
              result= "Error";
    }

  }else if(button_text=='C'){
    equ='0';
    result='';
    forntsize=38.0;
    resultsize=48.0;

  }
  else if(button_text=='CLR'){
    equ=equ.substring(0,equ.length-1);
    forntsize=38.0;
    resultsize=48.0;
    if(equ==""){
      equ='0';
    }
  }
  else{
    if(equ =='0' && equ=='00'){
      equ=button_text;

    }else
    equ=equ +button_text;
  }
});


  }

  Widget Buttonbuild(button_height,button_text,button_color){
    return    Container(
      width: MediaQuery.of(context).size.height*0.10*button_height,
      color: button_color,
      child: FlatButton(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(color: Colors.white,width: 1,style: BorderStyle.solid),
      ),
        padding: EdgeInsets.all(16),
        onPressed: ()=>buttonPress(button_text), child: Text('$button_text',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),


      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
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
          backgroundColor: Colors.redAccent[400],
        ),
        body: Column(

          children:<Widget> [

            Container(color: Colors.grey[300],
              alignment: Alignment.centerRight,
              padding:EdgeInsets.fromLTRB(10,20,10,0),
              child: Text('$equ',style:TextStyle(fontSize: forntsize,),),
            ),
            Container(
              color: Colors.lightGreenAccent,
              alignment: Alignment.centerRight,
              padding:EdgeInsets.fromLTRB(10,20,10,0),
              child: Text('$result',style:TextStyle(fontSize: resultsize,),),
            ),
            SizedBox(height: 20,),
            Expanded(child: Divider()),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
               color: Colors.orange,
                  width: MediaQuery.of(context).size.width*0.75,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                        Buttonbuild(1, 'C', Colors.redAccent),
                          Buttonbuild(1, 'CLR', Colors.blue),
                          Buttonbuild(1, 'AC', Colors.green),


                        ]
                      ),
                      TableRow(
                          children: [
                            Buttonbuild(1, '1', Colors.black12),
                            Buttonbuild(1, '2', Colors.black12),
                            Buttonbuild(1,' 3' , Colors.black12),
                          ]
                      ),
                      TableRow(
                          children: [
                            Buttonbuild(1, '4', Colors.black26),
                            Buttonbuild(1, '5', Colors.black26),
                            Buttonbuild(1,' 6' , Colors.black26),
                          ],
                      ),
                      TableRow(
                        children: [
                          Buttonbuild(1, '7', Colors.black38),
                          Buttonbuild(1, '8', Colors.black38),
                          Buttonbuild(1,' 9' , Colors.black38),
                        ],
                      ),
                      TableRow(
                        children: [
                          Buttonbuild(1, '.', Colors.black45),
                          Buttonbuild(1, '0', Colors.black45),
                          Buttonbuild(1,' 00' , Colors.black45),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.25,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          Buttonbuild(1, '×', Colors.amber),
                        //  Buttonbuild(1, '+', Colors.amber),
                         // Buttonbuild(1, '=', Colors.amber),
                        ]
                      ),
                      TableRow(
                          children: [

                              Buttonbuild(1, '+', Colors.amber),

                          ]
                      ),
                      TableRow(
                          children: [

                            Buttonbuild(1,' ÷' , Colors.amber),
                          ]
                      ),
                      TableRow(
                          children: [

                            Buttonbuild(1, '-', Colors.amber),
                          ]
                      ),
                      TableRow(
                          children: [
                            Buttonbuild(1, '=', Colors.deepPurple),

                          ]
                      ),
                    ],

                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );;
  }
}
