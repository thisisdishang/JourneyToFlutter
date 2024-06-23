import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Journey To Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.purpleAccent,
                child: Center(
                  child: Text(
                    'Row 1',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    'Row 2',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              width: 300,
              height: 100,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'Learn Row and Column Widget',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  print('Text Button Tapped');
                },
                child: Text('Text Button'),
                onLongPress: () {
                  print('Long Press');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print('Elevated Button Tapped');
                },
                child: Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('Outlined Button Tapped');
                },
                child: Text('Outlined Button'),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 300,
            child: Image.asset('assets/images/image2.jpg'),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
