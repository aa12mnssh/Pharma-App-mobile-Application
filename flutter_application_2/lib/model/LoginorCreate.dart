import 'package:flutter/material.dart';
import 'package:flutter_application_2/Component/my_buttonforloginorcreate.dart';
import 'package:flutter_application_2/Component/my_button.dart';
import 'package:flutter_application_2/model/LoginScreen.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class LoginorCreate extends StatelessWidget {
  LoginorCreate({super.key});
  void LoginIn2() {}
  void justLogin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
        body: Center(
            child: Column(children: [
          Image.asset('assets/image.png'),

          Center(
            child: Text(
              'Hello!',
              style: TextStyle(fontSize: 70, color: Colors.white),
            ),
          ),

// login text

          Center(
            child: Text(
              'Login to your Account',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(233, 186, 235, 244)),
            ),
          ),

//space
          SizedBox(
            height: 55,
          ),

          // login button
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(365, 72),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
//space

//account button
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(365, 72),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => createA(),
                    ));
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Color.fromARGB(194, 38, 38, 39),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ])));
  }
}
