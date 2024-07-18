import 'package:flutter/material.dart';
import 'package:journey_to_flutter/widgets/rounded_btn.dart';

class mystateful2 extends StatefulWidget {
  const mystateful2({super.key});

  @override
  State<mystateful2> createState() => _mystateful2State();
}

class _mystateful2State extends State<mystateful2> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Calculations'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Number 1',
                  ),
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Number 2',
                  ),
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(
                        btnName: 'Add',
                        bgColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.white),
                        callback: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1 + no2;
                          result = "The Sum of $no1 and $no2 is $sum";
                          setState(() {});
                        },
                      ),
                      RoundedButton(
                        btnName: 'Sub',
                        bgColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.white),
                        callback: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var diff = no1 - no2;
                          result =
                              "The Difference between $no1 and $no2 is $diff";
                          setState(() {});
                        },
                      ),
                      RoundedButton(
                        btnName: 'Mult',
                        bgColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.white),
                        callback: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var product = no1 * no2;
                          result = "The Product of $no1 and $no2 is $product";
                          setState(() {});
                        },
                      ),
                      RoundedButton(
                        btnName: 'Div',
                        bgColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.white),
                        callback: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var div = no1 / no2;
                          result =
                              "The $no1 can be divided by $no2, ${div.toStringAsFixed(2)} times";
                          setState(() {});
                        },
                      ),
                      RoundedButton(
                        btnName: 'C',
                        bgColor: Colors.orange,
                        textStyle: TextStyle(color: Colors.white),
                        callback: () {
                          setState(() {
                            no1Controller.clear();
                            no2Controller.clear();
                            result = "";
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
