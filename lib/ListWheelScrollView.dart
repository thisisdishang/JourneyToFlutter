import 'package:flutter/material.dart';

class MyListWheelScrollView extends StatefulWidget {
  const MyListWheelScrollView({super.key});

  @override
  State<MyListWheelScrollView> createState() => _MyListWheelScrollViewState();
}

class _MyListWheelScrollViewState extends State<MyListWheelScrollView> {
  var arrIndex = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListWheelScrollView',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purpleAccent.shade700,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 180,
          children: arrIndex
              .map((value) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          '$value',
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade700,
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
