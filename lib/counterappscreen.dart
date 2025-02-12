import 'package:flutter/material.dart';

class Counterappscreen extends StatefulWidget {
  const Counterappscreen({super.key});

  @override
  State<Counterappscreen> createState() => _CounterappscreenState();
}

class _CounterappscreenState extends State<Counterappscreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Counter By Daniyal",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: TextStyle(
                  color: Colors.green, fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add,color: Colors.white,),
                  onPressed: (){
                    count++;
                    setState(() {

                    });
                  },
                  backgroundColor: Colors.green,
                ),
                FloatingActionButton(
                  child: Icon(Icons.remove,color: Colors.white,),
                  onPressed: (){
                    if(count-->0)
                      {
                        print('$count');
                      }
                    else
                      {
                        count=0;
                      }
                    setState(() {

                    });
                  },
                  backgroundColor: Colors.green,
                ),
                FloatingActionButton(
                  child: Icon(Icons.refresh,color: Colors.white,),
                  onPressed: (){
                    count=0;
                    setState(() {

                    });
                  },
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
