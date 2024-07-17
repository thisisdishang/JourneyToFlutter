import 'package:flutter/material.dart';
import 'package:journey_to_flutter/ui_helper/util.dart';

class mystatefull extends StatefulWidget {
  const mystatefull({super.key});

  @override
  State<mystatefull> createState() => _mystatefullState();
}

class _mystatefullState extends State<mystatefull> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {
                setState(() {
                  count++;
                  print(count);
                });
              },
              child: Text(
                'Increment Count',
                style: mytextstyle18(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
