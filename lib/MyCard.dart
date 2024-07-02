import 'package:flutter/material.dart';

class mycard extends StatelessWidget {
  const mycard({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Dishang',
      'Harsh',
      'Harshiv',
      'Gautam',
      'Pratham',
      'Dhruvil',
      'Haney',
      'Sanjay',
      'Sahil',
      'Krunal',
      'Krishna',
      'Parth'
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
        backgroundColor: Colors.cyanAccent,
        title: Text(
          'Card Example',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(7.0),
                child: Card(
                  shadowColor: Colors.cyanAccent,
                  elevation: 8,
                  child: ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.2113030492.1719532800&semt=ais_user'),
                      ),
                    ),
                    title: Text(
                      arrNames[index],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(subNames[index]),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ),
          itemCount: arrNames.length),
    );
  }
}
