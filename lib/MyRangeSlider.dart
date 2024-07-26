import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values = RangeValues(0, 100);
  int age = 1;

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider & Range Slider'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              activeColor: Colors.orange,
              label: "Select Age",
              value: age.toDouble(),
              onChanged: (value) {
                setState(() {
                  age = value.toInt();
                });
              },
              min: 1,
              max: 100,
            ),
            Text(
              "Your Age: " + age.toString(),
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RangeSlider(
              min: 0,
              max: 100,
              activeColor: Colors.orange,
              inactiveColor: Colors.orange.shade100,
              values: values,
              labels: labels,
              divisions: 10,
              onChanged: (newvalue) {
                values = newvalue;
                print('${newvalue.start}, ${newvalue.end}');
                setState(() {});
              },
            ),
            Text(
              "Start: " +
                  values.start.toStringAsFixed(2) +
                  "\nEnd: " +
                  values.end.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
