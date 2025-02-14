import 'package:flutter/material.dart';

class Inputcalculatorscreen extends StatefulWidget {
  const Inputcalculatorscreen({super.key});

  @override
  State<Inputcalculatorscreen> createState() => _InputcalculatorscreenState();
}

class _InputcalculatorscreenState extends State<Inputcalculatorscreen> {
  int add=0;
  int sub=0;
  int multi=0;
  double div=0;
  int mod=0;
  TextEditingController n1Controller=TextEditingController();
  TextEditingController n2Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            child: TextFormField(
              controller: n1Controller,
              decoration: InputDecoration(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
            ),
            child: TextFormField(
              controller: n2Controller,
              decoration: InputDecoration(),
            ),
          ),
          FloatingActionButton(
            child: Text(
              "=",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              int n1,n2;
              n1=int.parse(n1Controller.text);
              n2=int.parse(n2Controller.text);
              add=n1+n2;
              sub=n1-n2;
              multi=n1*n2;
              div=n2/n1;
              mod=n1%n2;
              print('Add=$add');
              print('Subtract=$sub');
              print('Multiply=$multi');
              print('Divide$div');
              print('Modules$mod');
              setState(() {

              });
            },
          ),
          SizedBox(height: 30,),
          Text('Add = $add',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Subtract = $sub',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Multiply = $multi',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Divide = $div',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Modules = $mod',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
