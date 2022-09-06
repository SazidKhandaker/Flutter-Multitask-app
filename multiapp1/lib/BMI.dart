import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int current_index=0;
var result;
double height=0;
  double weight=0;
TextEditingController hightContorller=TextEditingController();
TextEditingController weidthContorller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(

        appBar: AppBar(
          title: Text("BMI"),
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
          backgroundColor: Colors.deepOrangeAccent[400],
        ),
       body: SingleChildScrollView(

         child: Padding(padding: const EdgeInsets.all(12),

           child: Column(

             children: <Widget>[

               Text(" 👩🏾‍⚕️ ", style:TextStyle(fontSize: 60),),

               SizedBox(height: 30,),
               Row(

                 mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [

                  radioButton('Male', Colors.blueAccent, 0),
                  radioButton('Female', Colors.pink, 1),
                ],

               ),
               SizedBox(height: 30,),
               Text("Enter Your Height in CM",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               TextField(
                 controller: hightContorller,
                 textAlign: TextAlign.center,
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   hintText: "Your Height in CM",
                   filled: true,
                   fillColor: Colors.grey[300],
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide.none,
                   )
                 ),
               ),
               SizedBox(height: 20,),
               //Weight Field
               Text("Enter Your Weight in KG",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               TextField(
                 controller: weidthContorller,
                 textAlign: TextAlign.center,
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                     hintText: "Your Height in KG",
                     filled: true,
                     fillColor: Colors.grey[300],
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide.none,
                     )
                 ),
               ),
               SizedBox(height: 20,),
               //Button calculation
               FlatButton(
                 height: 50,
                 color:Colors.redAccent,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Text("Calculation",
                   style: TextStyle(color:  Colors.white, fontSize: 20,fontWeight: FontWeight.bold),

                 ),
                 onPressed: (){
                   setState(() {
                     height= double.parse(hightContorller.value.text);
                     weight=double.parse(weidthContorller.value.text);
                     
                   });
                   BmiCalculation(height, weight);
                 },
               ),
               SizedBox(height: 20,),

               Text("Your BMI  IS",

                 style: TextStyle(color:  Colors.blue, fontSize: 30,fontWeight: FontWeight.bold,),
               ),
             SizedBox(height: 10,),
               Text("  👩🏾‍🦰️ $result   👨🏾‍🦱 ️  ",

                 style: TextStyle(color:  Colors.black, fontSize: 40,fontWeight: FontWeight.bold,),
               ),
               SizedBox(height: 25,),
               Padding(padding: const EdgeInsets.symmetric(horizontal: 70.0),
                 child:  Builder(
                   builder: (BuildContext con) => RaisedButton(onPressed: (){
                     Scaffold.of(con).showSnackBar(SnackBar(
                       content: Text(' 18.5 – youre in the underweight range. '
                           'Between 18.5 and 24.9 – youre in the healthy weight range.'
                           'Between 18.5 and 24.9 – youre in the healthy weight range.'
                           'between 30 and 39.9 – youre in the obese range.',style:TextStyle(fontWeight: FontWeight.bold,) ,),
                       duration: Duration(seconds: 20),
                       action: SnackBarAction(label: "OK", onPressed: (){}),
                     ));

                   },child: Text('BMI Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),),

                 ),
               ),
             ],
           ),
         ),
       ),
      ),
    );
  }
  void  BmiCalculation(double height,double weight){
  double finalresult = weight/(height*height/10000);
  var bmi =finalresult.toStringAsFixed(2);
  setState(() {
    result=bmi;
  });
  }
  void changeIndex (int index){
    setState(() {
      current_index=index;
    });
  }
  Widget radioButton(String value,Color color,int index) {
    // TODO: implement radioButton
    return Expanded(child: Container(
      margin:const EdgeInsets.symmetric(horizontal: 12.0) ,
     child: FlatButton(
       height: 90,
       color: current_index==  index ? color:Colors.grey[200],
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8.0),
       ),
       child: Text(value,
       style: TextStyle(color: current_index==  index ? Colors.white: color,fontSize: 20,fontWeight: FontWeight.bold),

       ),
       onPressed: (){
         changeIndex(index);
       },
     ),

    ));
  }
}

