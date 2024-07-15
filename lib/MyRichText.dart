import 'package:flutter/material.dart';

class myrichtext extends StatelessWidget {
  const myrichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Example'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Hello',
              ),
              TextSpan(
                text: 'World!',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: '\nWelcome to ',
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 43,
                    color: Colors.red,
                    fontFamily: 'GreatVibes'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
