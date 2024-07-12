import 'package:flutter/material.dart';

class mywrap extends StatelessWidget {
  const mywrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wrap Widget Example',
          style: TextStyle(fontFamily: 'Cinzel', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          //direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,
          alignment: WrapAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.deepPurple,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.amber,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.purpleAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.lightGreenAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.cyanAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.pink,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
