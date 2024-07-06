import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class mydatetime extends StatefulWidget {
  const mydatetime({super.key});

  @override
  State<mydatetime> createState() => _mydatetimeState();
}

class _mydatetimeState extends State<mydatetime> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('Date & Time Example'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Date and Time: \n$time',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Current Month: ${time.month}',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Current Year: ${time.year}',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Current TimeZone: ${time.timeZoneName}',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Current Weekday: ${time.weekday}',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Hms Format: ${DateFormat('Hms').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'jms Format: ${DateFormat('jms').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'yMMMMd Format: ${DateFormat('yMMMMd').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'MMMM Format: ${DateFormat('MMMM').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'EEEE Format: ${DateFormat('EEEE').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'QQQQ Format: ${DateFormat('QQQQ').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'yMMMMEEEEd Format: ${DateFormat('yMMMMEEEEd').format(time)}',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Generate Time'),
            ),
          ],
        ),
      ),
    );
  }
}
