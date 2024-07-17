import 'package:flutter/material.dart';

class mystack extends StatelessWidget {
  const mystack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack & Positioned Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              right: 40,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55, left: 80),
                  child: Text(
                    'Legend',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Cinzel",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 150,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Never',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "GreatVibes",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              right: 40,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Die',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Silkscreen",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50,
              bottom: 25,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
