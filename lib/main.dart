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
        title: Center(
          child: Text(
            'Journey To Flutter',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 100,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    '...Keep Coding...',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mylist(),
                          ),
                        );
                      },
                      child: Text('ListView'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mylistbuilder(),
                          ),
                        );
                      },
                      child: Text('ListViewBuilder'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mylistseparated(),
                          ),
                        );
                      },
                      child: Text('ListViewSeparated'),
                      onLongPress: () {
                        print('Long Press');
                      },
                    ),
                  ],
                ),
              ),
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

class mylist extends StatefulWidget {
  const mylist({super.key});

  @override
  State<mylist> createState() => _mylistState();
}

class _mylistState extends State<mylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'ListView Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'One',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Two',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Three',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Four',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Five',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Six',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Seven',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Eight',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nine',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ten',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class mylistbuilder extends StatefulWidget {
  const mylistbuilder({super.key});

  @override
  State<mylistbuilder> createState() => _mylistbuilderState();
}

class _mylistbuilderState extends State<mylistbuilder> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Alpha',
      'Beta',
      'Gamma',
      'Delta',
      'Hella',
      'Alic',
      'John',
      'Brier',
      'Devin'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'ListView Builder Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Center(
          child: Text(
            arrNames[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        itemCount: arrNames.length,
        itemExtent: 100,
      ),
    );
  }
}

class mylistseparated extends StatefulWidget {
  const mylistseparated({super.key});

  @override
  State<mylistseparated> createState() => _mylistseparatedState();
}

class _mylistseparatedState extends State<mylistseparated> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Gujarat',
      'Maharashtra',
      'Delhi',
      'Rajasthan',
      'Madhya Pradesh',
      'Uttar Pradesh',
      'Telangana',
      'Jammu & Kashmir',
      'Bihar',
      'Karnatak',
      'Punjab',
      'Sikkim'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'ListView Separated Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(
                  index.toString(),
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(height: 50, thickness: 5);
          },
          itemCount: arrNames.length),
    );
  }
}
