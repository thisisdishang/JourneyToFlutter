import 'package:flutter/material.dart';

class mysizebox extends StatelessWidget {
  const mysizebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SizedBox Example',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 200,
                maxHeight: 100,
                maxWidth: 350,
              ),
              child: SizedBox.expand(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Expand',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 200,
                maxHeight: 100,
                maxWidth: 350,
              ),
              child: SizedBox.shrink(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Shrink',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Square'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
