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
        backgroundColor: Colors.orange,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Journey To Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print('Tapped on Container 1');
                      },
                      onLongPress: () {
                        print('Long Pressed on Container 1');
                      },
                      onDoubleTap: () {
                        print('Double-Tapped on Container 1');
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.purpleAccent,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              print('Tapped on Row 1 Text');
                            },
                            child: Text(
                              'Row 1',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('Tapped on Container 2');
                      },
                      onLongPress: () {
                        print('Long Pressed on Container 2');
                      },
                      onDoubleTap: () {
                        print('Double-Tapped on Container 2');
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.pink,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              print('Tapped on Row 2 Text');
                            },
                            child: Text(
                              'Row 2',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            print('Tapped on Row 3 Text');
                          },
                          child: Text(
                            'Row 3',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            print('Tapped on Row 4 Text');
                          },
                          child: Text(
                            'Row 4',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.black,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            print('Tapped on Row 5 Text');
                          },
                          child: Text(
                            'Row 5',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
            SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/images/image2.jpg'),
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/images/white.jpg'),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
