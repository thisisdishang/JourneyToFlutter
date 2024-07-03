import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mytextfield extends StatelessWidget {
  const mytextfield({super.key});

  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var passText = TextEditingController();
    var phoneText = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                controller: phoneText,
                decoration: InputDecoration(
                  prefixText: "+91-",
                  hintText: "Phone Number",
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: passText,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.deepPurple,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 10,
                  ),
                  onPressed: () {
                    String Uemail = emailText.text.toString();
                    String Upass = passText.text;
                    String Unum = phoneText.text.toString();
                    if (Uemail != "" && Upass != "" && Unum != "") {
                      Fluttertoast.showToast(
                        msg:
                            "Email: $Uemail,\nPhone Numeber: $Unum,\nPassword: $Upass",
                      );
                      print(
                          "Email: $Uemail, Phone Numeber: $Unum, Password: $Upass");
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
