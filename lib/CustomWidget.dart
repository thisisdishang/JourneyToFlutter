import 'package:flutter/material.dart';
import 'package:journey_to_flutter/ui_helper/util.dart';
import 'package:journey_to_flutter/widgets/my_btn.dart';
import 'package:journey_to_flutter/widgets/rounded_btn.dart';

class customwidget extends StatelessWidget {
  const customwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              child: RoundedButton(
                btnName: 'Play',
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                callback: () {
                  print('Logged In');
                },
                textStyle: mytextstyle18(),
              ),
            ),
            Container(
              width: 120,
              child: MyButton(
                btnName: 'Press',
                bgColor: Colors.orange,
                callback: () {
                  print('Logged In');
                },
                textStyle: mytextstyle23(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
