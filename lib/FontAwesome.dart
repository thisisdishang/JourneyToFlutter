import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class fontawesome extends StatelessWidget {
  const fontawesome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Font Awesome Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Wrap(
          spacing: 5,
          runSpacing: 6,
          children: [
            FaIcon(
              FontAwesomeIcons.facebook,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.instagram,
              size: 50,
              color: Colors.purple,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.whatsapp,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.snapchat,
              size: 50,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.apple,
              size: 50,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.amazon,
              size: 50,
              color: Colors.red,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.safari,
              size: 50,
              color: Colors.orange,
            ),
            SizedBox(
              width: 15,
            ),
            FaIcon(
              FontAwesomeIcons.paypal,
              size: 50,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
