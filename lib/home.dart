import 'package:flutter/material.dart';
import 'answers.dart';
import 'dart:math';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var ans = '';
  var rn = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Ask Me!",
          style: TextStyle(fontSize: 60, color: Colors.yellow),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 80),
            Container(
              padding: EdgeInsets.only(left: 50),
              alignment: Alignment.center,
              child: TextField(
                style: TextStyle(
                  fontSize: 32,
                  color: primarycolor,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter a YES/NO type question...",
                    hintStyle: TextStyle(color: primarycolor, fontSize: 32)),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(ans,
                  style: TextStyle(fontSize: 45, color: primarycolor)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    ans = answer[rn.nextInt(10)];
                  });
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(primarycolor)),
                child:
                    Text("Get Answer", style: TextStyle(color: Colors.black)))
          ],
        ),
      ),
    );
  }
}
