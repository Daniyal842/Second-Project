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
  //---------Greater number between 2 numbers section start---------
  int n5 = 0;
  int n6 = 0;
  int a5 = 0;
  int a6 = 0;
  TextEditingController n5Controller = TextEditingController();
  TextEditingController n6Controller = TextEditingController();
  //---------Greater number between 2 numbers section end---------
  //---------Greater number between 5 numbers section start---------
  int n7 = 0;
  int n8 = 0;
  int n9 = 0;
  int n10 = 0;
  int n11 = 0;
  int a7 = 0;
  int a8 = 0;
  int a9 = 0;
  int a10 = 0;
  int a11 = 0;
  TextEditingController n7Controller = TextEditingController();
  TextEditingController n8Controller = TextEditingController();
  TextEditingController n9Controller = TextEditingController();
  TextEditingController n10Controller = TextEditingController();
  TextEditingController n11Controller = TextEditingController();
  //---------Greater number between 5 numbers section end---------
  int n12 = 0;
  int n13 = 0;
  int a12 = 0;
  int a13 = 0;
  TextEditingController n12Controller = TextEditingController();
  TextEditingController n13Controller = TextEditingController();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
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
            //---------Greater number between 2 numbers section start----
            Text(
              "Greater Number Between 2 N0",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
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
            //---------Greater number between 2 numbers section end------
            Divider(
              thickness: 2,
              height: 40,
              color: Colors.black,
            ),
            //---------Greater number between 5 numbers section start---------
            Text(
              "Greater Number Between 5 N0",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      color: Colors.white),
                  child: TextFormField(
                    controller: n7Controller,
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
                    controller: n8Controller,
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
                      color: Colors.white),
                  child: TextFormField(
                    controller: n9Controller,
                    decoration: InputDecoration(),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    controller: n10Controller,
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
                      color: Colors.white),
                  child: TextFormField(
                    controller: n11Controller,
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
                      n7 = int.parse(n7Controller.text);
                      n8 = int.parse(n8Controller.text);
                      n9 = int.parse(n9Controller.text);
                      n10 = int.parse(n10Controller.text);
                      n11 = int.parse(n11Controller.text);
                      if (n7 > n8 && n7 > n9 && n7 > n10 && n7 > n11) {
                        a7 = n7;
                        a8 = n8;
                        a9 = n9;
                        a10 = n10;
                        a11 = n11;
                      } else if (n8 > n7 && n8 > n9 && n8 > n10 && n8 > n11) {
                        a7 = n8;
                        a8 = n7;
                        a9 = n9;
                        a10 = n10;
                        a11 = n11;
                      } else if (n9 > n7 && n9 > n8 && n9 > n10 && n9 > n11) {
                        a7 = n9;
                        a8 = n7;
                        a9 = n8;
                        a10 = n10;
                        a11 = n11;
                      } else if (n10 > n7 &&
                          n10 > n8 &&
                          n10 > n9 &&
                          n10 > n11) {
                        a7 = n10;
                        a8 = n7;
                        a9 = n8;
                        a10 = n9;
                        a11 = n11;
                      } else if (n11 > n7 &&
                          n11 > n8 &&
                          n11 > n9 &&
                          n11 > n10) {
                        a7 = n11;
                        a8 = n7;
                        a9 = n8;
                        a10 = n9;
                        a11 = n10;
                      }
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "$a7 > $a8",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 > $a9",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 > $a10",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 > $a11",
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
                        "$a7 is greater then $a8",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 is greater then $a9",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 is greater then $a10",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$a7 is greater then $a11",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //---------Greater number between 5 numbers section end---------
            Divider(
              thickness: 2,
              height: 40,
              color: Colors.black,
            ),
            Text(
              "Less Number Between 2 N0",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      color: Colors.white),
                  child: TextFormField(
                    controller: n12Controller,
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
                    controller: n13Controller,
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
                      n12 = int.parse(n12Controller.text);
                      n13 = int.parse(n13Controller.text);
                      if (n12<n13) {
                        a12 = n12;
                        a13 = n13;
                      } else {
                        a12 = n13;
                        a13 = n12;
                      }
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Text(
                        "$a12 < $a13",
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
                        "$a12 is less then $a13",
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
