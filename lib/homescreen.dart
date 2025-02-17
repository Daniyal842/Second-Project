import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  //----------Swapping1 section start--------------------------
  int n1 = 0;
  int n2 = 0;
  int a1 = 0;
  int a2 = 0;
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  //---------Swapping1 section End--------------------------------
  //----------Swapping2 section start------------------------------
  int n3 = 0;
  int n4 = 0;
  int a3 = 0;
  int a4 = 0;
  TextEditingController n3Controller = TextEditingController();
  TextEditingController n4Controller = TextEditingController();
  //---------Swapping2 section End------------------------------
  int n5 = 0;
  int n6 = 0;
  int a5 = 0;
  int a6 = 0;
  TextEditingController n5Controller = TextEditingController();
  TextEditingController n6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //----------Swapping1 section start---------
            Text(
              "Swapping With 3rd Variable",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  color: Colors.white),
              child: TextFormField(
                controller: n1Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: n2Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(),
                  color: Colors.green),
              child: TextButton(
                child: Text(
                  '=',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: () {
                  n1 = int.parse(n1Controller.text);
                  n2 = int.parse(n2Controller.text);
                  int empty;
                  a1 = n1;
                  a2 = n2;
                  empty = n1;
                  n1 = n2;
                  n2 = empty;
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "Before Swapping",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "A = $a1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "B = $a2",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "After Swapping",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "A = $n1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "B = $n2",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //---------Swapping1 section End------------
            Divider(
              thickness: 2,
              height: 40,
              color: Colors.black,
            ),
            //----------Swapping2 section start------------------------
            Text(
              "Swapping Without 3rd Variable",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  color: Colors.white),
              child: TextFormField(
                controller: n3Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: n4Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(),
                  color: Colors.green),
              child: TextButton(
                child: Text(
                  '=',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: () {
                  n3 = int.parse(n3Controller.text);
                  n4 = int.parse(n4Controller.text);
                  int empty;
                  a3 = n3;
                  a4 = n4;
                  n3 = n3 + n4;
                  n4 = n3 - n4;
                  n3 = n3 - n4;
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Before Swapping",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "A = $a3",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "B = $a4",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "After Swapping",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "A = $n3",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "B = $n4",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            //---------Swapping2 section End--------------
            Divider(
              thickness: 2,
              height: 40,
              color: Colors.black,
            ),
            Text(
              "Greater Number Between 2 N0",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  color: Colors.white),
              child: TextFormField(
                controller: n5Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: n6Controller,
                decoration: InputDecoration(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(),
                  color: Colors.green),
              child: TextButton(
                child: Text(
                  '=',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: () {
                  n5 = int.parse(n5Controller.text);
                  n6 = int.parse(n6Controller.text);
                  if (n5 > n6) {
                    a5 = n5;
                    a6 = n6;
                  } else {
                    a5 = n6;
                    a6 = n5;
                  }
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "$a5 > $a6",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "$a5 is greater then $a6",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
