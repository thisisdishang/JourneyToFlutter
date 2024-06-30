import 'package:flutter/material.dart';

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
        backgroundColor: Colors.purpleAccent,
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

class mylisttile extends StatelessWidget {
  const mylisttile({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Gujarat',
      'Maharashtra',
      'Kerala',
      'Rajasthan',
      'Madhya Pradesh',
      'Uttar Pradesh',
      'Telangana',
      'Jammu & Kashmir',
      'Bihar',
      'Karnatak',
      'Punjab',
      'Delhi'
    ];

    var subNames = [
      'Surat',
      'Mumbai',
      'Kochi',
      'Udaipur',
      'Ujjain',
      'Mathura',
      'Telangana',
      'Srinagar',
      'Patna',
      'Bangalore',
      'Amritsar',
      'Delhi'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'ListTile Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.2113030492.1719532800&semt=ais_user'),
                  ),
                ),
                title: Text(
                  subNames[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(arrNames[index]),
                trailing: Icon(Icons.add),
              ),
          separatorBuilder: (context, index) => Divider(
                height: 30,
                thickness: 5,
                color: Colors.green,
              ),
          itemCount: arrNames.length),
    );
  }
}
