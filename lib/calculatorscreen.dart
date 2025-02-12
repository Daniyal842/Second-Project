import 'package:flutter/material.dart';

class Calculatorscreen extends StatefulWidget {
  const Calculatorscreen({super.key});

  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  int add = 0;
  int sub = 0;
  int multi = 0;
  double div = 0;
  int mod = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$add'),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  int n1 = 51;
                  int n2 = 34;
                  add = n1 + n2;
                  setState(() {});
                  print(add);
                  print('add=$add');
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$sub'),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton(
                child: Icon(Icons.minimize),
                onPressed: () {
                  int n1 = 500;
                  int n2 = 347;
                  sub = n1 - n2;
                  setState(() {});
                  print(sub);
                  print('Subtract=$sub');
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$multi'),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton(
                child: Icon(Icons.close),
                onPressed: () {
                  int n1 = 12;
                  int n2 = 37;
                  multi = n1 * n2;
                  setState(() {});
                  print(multi);
                  print('Multiply=$multi');
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$div'),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton(
                child: Text(
                  "/",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  int n1 = 500;
                  int n2 = 40;
                  div = (n1 / n2);
                  setState(() {});
                  print(div);
                  print('Divide=$div');
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$mod'),
              SizedBox(
                height: 30,
              ),
              FloatingActionButton(
                child: Icon(Icons.percent),
                onPressed: () {
                  int n1 = 501;
                  int n2 = 304;
                  mod = n1 % n2;
                  setState(() {});
                  print(mod);
                  print('Modules=$mod');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
