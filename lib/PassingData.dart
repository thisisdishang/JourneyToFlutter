import 'package:flutter/material.dart';
import 'package:journey_to_flutter/ui_helper/util.dart';

class PassingData extends StatelessWidget {
  const PassingData({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          color: Colors.orange.shade100,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade500,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfile(
                        nameController.text.toString(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'My Profile',
                  style: mytextstyle18(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  var nameFromHome;

  MyProfile(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome $nameFromHome",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'GreatVibes',
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
