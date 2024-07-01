import 'package:flutter/material.dart';
import 'package:journey_to_flutter/ui_helper/util.dart';

class stylesthemes extends StatelessWidget {
  const stylesthemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          'Styles and Themes',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Lucifer Morningstar',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.purpleAccent),
            ),
            Text(
              'Genesis',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'Almond',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.blue),
            ),
            Text(
              'Kratos',
              style: mytextstyle15(fontweight: FontWeight.w700),
            ),
            Text(
              'Michelle',
              style: mytextstyle23(),
            )
          ],
        ),
      ),
    );
  }
}
