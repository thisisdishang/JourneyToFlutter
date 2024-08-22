import 'package:flutter/material.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clippers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(41),
            bottomLeft: Radius.circular(21),
          ),
          // child: Container(
          //   color: Colors.grey,
          //   width: 350,
          //   height: 200,
          // ),
          child: Image.network(
            'https://t4.ftcdn.net/jpg/01/35/02/49/360_F_135024994_csmSPpJ72LJVfbn27KPqCIi0DIUy5hxY.jpg',
            width: 350,
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
