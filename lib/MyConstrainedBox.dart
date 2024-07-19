import 'package:flutter/material.dart';

class myconstrained extends StatelessWidget {
  const myconstrained({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ConstrainedBox Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 200,
                maxHeight: 100,
              ),
              child: Text(
                'Hello World Hello World Hello World Hello World Hello World Hello World',
                style: TextStyle(
                  fontSize: 21,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 300,
                minWidth: 200,
                minHeight: 100,
                maxHeight: 500,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Click'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
