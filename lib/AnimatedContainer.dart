import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  var _width = 200.0;
  var _height = 100.0;
  var _width2 = 100.0;
  var _height2 = 200.0;
  bool flag = true;
  Color bgColor = Colors.orange;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.orange,
  );
  Decoration myDecor2 = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blue,
  );

  var myOpacity = 1.0;
  bool opacityFlag = true;

  bool isFirst = true;

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
            AnimatedContainer(
              width: _width2,
              height: _height2,
              duration: Duration(seconds: 2),
              decoration: myDecor2,
              curve: Curves.slowMiddle,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: myOpacity,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green.shade800,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                AnimatedCrossFade(
                  firstChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey.shade400,
                  ),
                  secondChild: Image.asset(
                    'assets/images/white.jpg',
                    width: 150,
                    height: 150,
                  ),
                  crossFadeState: isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(seconds: 2),
                  sizeCurve: Curves.fastOutSlowIn,
                  firstCurve: Curves.easeIn,
                  secondCurve: Curves.bounceInOut,
                ),
              ],
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
                    _height = 100.0;
                    //bgColor = Colors.red;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple);

                    _width2 = 200.0;
                    _height2 = 100.0;
                    myDecor2 = BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    );
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    //bgColor = Colors.orange;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.orange);

                    _width2 = 100.0;
                    _height2 = 200.0;
                    myDecor2 = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blue);
                    flag = true;
                  }

                  if (opacityFlag) {
                    myOpacity = 0.0;
                    opacityFlag = false;
                  } else {
                    myOpacity = 1.0;
                    opacityFlag = true;
                  }

                  if (isFirst) {
                    isFirst = false;
                  } else {
                    isFirst = true;
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
