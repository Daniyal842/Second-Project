import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int n1 = 12;
  int n2 = 56;
  int n3=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              child: Text(
                "=",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: (){
                n3=n1+n2;
                n1=n3-n1;
                n2=n3-n2;
                setState(() {

                });
                print('$n1');
                print('$n2');
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Before Swapping"),
                  Text("A = 12"),
                  Text("B = 56"),
                ],
              ),
              Column(
                children: [
                  Text("After Swapping"),
                  Text('A = $n1'),
                  Text('B= $n2'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
