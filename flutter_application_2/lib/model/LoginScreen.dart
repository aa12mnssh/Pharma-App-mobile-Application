import 'package:flutter/material.dart';
import 'package:flutter_application_2/Component/my_textfield.dart';
import 'package:flutter_application_2/Component/my_button.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? _buildPortrait(context)
            : _buildLandscape(context));
  }

  Widget _buildPortrait(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
//space
              SizedBox(height: 40),
// Backbutton
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
                            child: BackButton(
                              //onPressed:() =>,
                              color: Colors.white,
                            ),
                            maxRadius: 23,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

//Login Icon
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 50,
                color: Colors.white,
              ),
//space
              SizedBox(height: 5),

//Login text
              Text(
                'Login',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
//Space
              SizedBox(height: 80),

//space
              SizedBox(height: 0),
// Email box
              my_textfield(
                contoller: usernameController,
                hintText: ' Email or Phone number',
                obscureText: false,
              ),
// space
              SizedBox(height: 15),

//space
              SizedBox(height: 0),
// password box
              my_textfield(
                contoller: passswordController,
                hintText: 'Password',
                obscureText: true,
              ),
// space
              SizedBox(height: 30),

//Login Button
              loginButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => nav(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLandscape(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
//space
              SizedBox(height: 40),
// Backbutton
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Row(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            child: BackButton(
                              //onPressed:() =>,
                              color: Colors.white,
                            ),
                            maxRadius: 23,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

//Login Icon
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 50,
                color: Colors.white,
              ),
//space
              SizedBox(height: 5),

//Login text
              Text(
                'Login',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
//Space
              SizedBox(height: 80),

//space
              SizedBox(height: 0),
// Email box
              my_textfield(
                contoller: usernameController,
                hintText: ' Email or Phone number',
                obscureText: false,
              ),
// space
              SizedBox(height: 15),

//space
              SizedBox(height: 0),
// password box
              my_textfield(
                contoller: passswordController,
                hintText: 'Password',
                obscureText: true,
              ),
// space
              SizedBox(height: 30),

//Login Button
              loginButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
