import 'package:flutter/material.dart';

class mygridview extends StatefulWidget {
  const mygridview({super.key});

  @override
  State<mygridview> createState() => _mygridviewState();
}

class _mygridviewState extends State<mygridview> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.red,
      Colors.purpleAccent,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.deepPurple,
      Colors.cyan
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridView Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: arrColor[0],
          ),
          Container(
            color: arrColor[1],
          ),
          Container(
            color: arrColor[2],
          ),
          Container(
            color: arrColor[3],
          ),
          Container(
            color: arrColor[4],
          ),
          Container(
            color: arrColor[5],
          ),
          Container(
            color: arrColor[6],
          ),
        ],
      ),
    );
  }
}

class myextentgridview extends StatefulWidget {
  const myextentgridview({super.key});

  @override
  State<myextentgridview> createState() => _myextentgridviewState();
}

class _myextentgridviewState extends State<myextentgridview> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.red,
      Colors.purpleAccent,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.deepPurple,
      Colors.cyan
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Extent GridView Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: arrColor[0],
          ),
          Container(
            color: arrColor[1],
          ),
          Container(
            color: arrColor[2],
          ),
          Container(
            color: arrColor[3],
          ),
          Container(
            color: arrColor[4],
          ),
          Container(
            color: arrColor[5],
          ),
          Container(
            color: arrColor[6],
          ),
        ],
      ),
    );
  }
}

class mygridviewbuilder extends StatefulWidget {
  const mygridviewbuilder({super.key});

  @override
  State<mygridviewbuilder> createState() => _mygridviewbuilderState();
}

class _mygridviewbuilderState extends State<mygridviewbuilder> {
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.red,
      Colors.purpleAccent,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.deepPurple,
      Colors.cyan
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridView Builder Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
        ),
        itemBuilder: (context, index) => Container(color: arrColor[index]),
        itemCount: arrColor.length,
      ),
    );
  }
}
