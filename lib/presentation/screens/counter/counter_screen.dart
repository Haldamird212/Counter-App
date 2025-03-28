import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String clicks = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Clicks Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text("$clicks", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
            clickCounter == 1 ? clicks = "Click" : clicks = "Clicks";
            // if (clickCounter == 1) {
            //   clicks = "Click";
            // } else {
            //   clicks = "Clicks";
            // }
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
