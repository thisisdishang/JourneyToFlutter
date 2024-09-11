import 'package:flutter/material.dart';

class MyMappingLists extends StatelessWidget {
  var arrData = [
    {
      'Name': 'Lucy',
      'Contact': '99786',
      'Unread': '2',
    },
    {
      'Name': 'Jarvis',
      'Contact': '88452',
      'Unread': '1',
    },
    {
      'Name': 'Helena',
      'Contact': '96854',
      'Unread': '4',
    },
    {
      'Name': 'Ami',
      'Contact': '85412',
      'Unread': '2',
    },
    {
      'Name': 'Denver',
      'Contact': '63512',
      'Unread': '5',
    },
    {
      'Name': 'Ell',
      'Contact': '78541',
      'Unread': '6',
    },
    {
      'Name': 'Kerl',
      'Contact': '85632',
      'Unread': '8',
    },
    {
      'Name': 'Peter',
      'Contact': '84541',
      'Unread': '2',
    },
  ];

  MyMappingLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping Lists"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: ListView(
          children: arrData
              .map(
                (value) => ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(
                    value['Name'].toString(),
                  ),
                  subtitle: Text(
                    value['Contact'].toString(),
                  ),
                  trailing: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    child: Text(
                      value['Unread'].toString(),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
