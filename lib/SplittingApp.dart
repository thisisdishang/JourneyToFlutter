import 'package:flutter/material.dart';

class splitapp extends StatelessWidget {
  const splitapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splitting App Into Widget'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: Column(
          children: [
            CatItems(),
            Contact(),
            SubCatItems(),
            BottomMenu(),
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
        flex: 4,
        child: Container(
          height: 200,
          color: Colors.green,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purpleAccent,
                ),
                title: Text('Name'),
                subtitle: Text('Mob. No. '),
                trailing: Icon(Icons.delete),
              ),
            ),
            itemCount: 10,
          ),
        ),
      );
}

class SubCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.red,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blueAccent),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Expanded(
        flex: 2,
        child: Container(
          height: 200,
          color: Colors.purple,
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
      );
}
