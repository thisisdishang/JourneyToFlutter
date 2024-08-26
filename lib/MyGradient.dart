import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget {
  const MyGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset(1.0, 0.5),
                  end: FractionalOffset(0.4, 1.0),
                  colors: [
                    Color(0xfffa709a),
                    Color(0xfffee140),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomCenter,
                  stops: [0.0, 1.5],
                  colors: [
                    Colors.purple,
                    Colors.blue,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
