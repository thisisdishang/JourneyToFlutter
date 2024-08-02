import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Color bgColor = Colors.orange;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animations'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: myDecor,
              curve: Curves.elasticInOut,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    //bgColor = Colors.red;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red);
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    //bgColor = Colors.orange;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange);
                    flag = true;
                  }
                });
              },
              child: Text(
                'Animate',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
