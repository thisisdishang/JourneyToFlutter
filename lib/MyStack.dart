import 'package:flutter/material.dart';

class mystack extends StatelessWidget {
  const mystack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack Widget Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                left: 30,
                top: 30,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                left: 60,
                top: 60,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Legend  Never  Die',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "GreatVibes",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
