import 'package:flutter/material.dart';

class mycirclavatar extends StatelessWidget {
  const mycirclavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'CircleAvatar Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: CircleAvatar(
          child: Container(
            width: 120,
            height: 120,
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: Image.network(
                      'https://static.vecteezy.com/system/resources/thumbnails/027/951/137/small_2x/stylish-spectacles-guy-3d-avatar-character-illustrations-png.png'),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Genesis',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          maxRadius: 80,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
