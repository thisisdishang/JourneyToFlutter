import 'package:flutter/material.dart';

class myexpanded extends StatelessWidget {
  const myexpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Expanded Widget With Row",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class myexpanded2 extends StatelessWidget {
  const myexpanded2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Expanded Widget With Column",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex:4,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

