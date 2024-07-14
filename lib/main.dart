import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:journey_to_flutter/CircleAvatar.dart';
import 'package:journey_to_flutter/CustomWidget.dart';
import 'package:journey_to_flutter/MySizebox.dart';
import 'package:journey_to_flutter/MyWrap.dart';
import 'package:journey_to_flutter/SplittingApp.dart';
import 'package:journey_to_flutter/ExpandedExample.dart';
import 'package:journey_to_flutter/GridView.dart';
import 'package:journey_to_flutter/ListView.dart';
import 'package:journey_to_flutter/MyCard.dart';
import 'package:journey_to_flutter/MyDatePicker.dart';
import 'package:journey_to_flutter/MyDateTime.dart';
import 'package:journey_to_flutter/MyStack.dart';
import 'package:journey_to_flutter/MyTextField.dart';
import 'package:journey_to_flutter/StylesThemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Journey To Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

callBack() {
  print('Callback Function is Called');
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(
            'Journey To Flutter',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Silkscreen'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 400,
                height: 100,
                color: Colors.yellow,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        Text(
                          '...Coding is Fun...',
                          style: TextStyle(
                            fontFamily: 'Silkscreen',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            backgroundColor: Colors.deepPurpleAccent,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'We Make It Happen',
                          style: TextStyle(
                            fontFamily: 'Cinzel',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      splashColor: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => stylesthemes(),
                          ),
                        );
                        Fluttertoast.showToast(msg: 'Styles and Themes');
                      },
                      onLongPress: () {
                        Fluttertoast.showToast(
                            msg: 'Long Pressed on Container 1');
                      },
                      onDoubleTap: () {
                        Fluttertoast.showToast(
                            msg: 'Double-Tapped on Container 1');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(75)),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => stylesthemes(),
                                ),
                              );
                              Fluttertoast.showToast(msg: 'Styles and Themes');
                            },
                            child: Text(
                              'Styles & Themes',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mycard(),
                          ),
                        );
                        Fluttertoast.showToast(msg: 'Card Widget Example');
                      },
                      onLongPress: () {
                        print('Long Pressed on Container 2');
                      },
                      onDoubleTap: () {
                        print('Double-Tapped on Container 2');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => mycard(),
                                ),
                              );
                              Fluttertoast.showToast(
                                  msg: 'Card Widget Example');
                            },
                            child: Text(
                              'Card',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mytextfield(),
                          ),
                        );
                        Fluttertoast.showToast(msg: 'TextField Widget Example');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(25, 30),
                            bottomLeft: Radius.elliptical(30, 25),
                          ),
                        ),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              print('Tapped on Row 3 Text');
                            },
                            child: Text(
                              'TextField',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mydatetime(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Colors.blue,
                            border: Border.all(
                              width: 7,
                              color: Colors.red,
                            )),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'Date & Time',
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mydatepicker(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 15,
                                spreadRadius: 8,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                            shape: BoxShape.circle),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'DatePicker\nTimePicker',
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => splitapp(),
                          ),
                        );
                        Fluttertoast.showToast(
                            msg: 'Splitting App Into Widget');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'Splitting App',
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => customwidget(),
                          ),
                        );
                        Fluttertoast.showToast(msg: 'Custom Widget');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'Custom Widget',
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
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mylisttile(),
                          ),
                        );
                      },
                      child: Text('ListTile'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mygridview(),
                          ),
                        );
                      },
                      child: Text('GridView'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => myextentgridview(),
                          ),
                        );
                      },
                      child: Text('Extent GridView'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mygridviewbuilder(),
                          ),
                        );
                      },
                      child: Text('GridView Builder'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
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
                            builder: (context) {
                              return mystack();
                            },
                          ),
                        );
                      },
                      child: Text('Stack'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mycirclavatar(),
                          ),
                        );
                      },
                      child: Text('Circle Avatar'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return myexpanded();
                            },
                          ),
                        );
                      },
                      child: Text('Expanded With Row'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return myexpanded2();
                            },
                          ),
                        );
                      },
                      child: Text('Expanded With Column'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return mywrap();
                            },
                          ),
                        );
                      },
                      child: Text('Wrap'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mysizebox(),
                          ),
                        );
                      },
                      child: Text('SizedBox'),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                callBack();
              },
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/image2.jpg'),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/images/white.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
