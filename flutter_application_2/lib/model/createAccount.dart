import 'package:flutter/material.dart';

import 'package:flutter_application_2/Component/my_button.dart';
import 'package:flutter_application_2/view/profilePage.dart';

class createA extends StatefulWidget {
  @override
  createAScreenState createState() => createAScreenState();
}

class createAScreenState extends State<createA> {
  final obscureText = true;
  final usernameController = TextEditingController();
  final passswordController = TextEditingController();
  void LoginIn() {}

  bool isPasswordVisible = false;
  Icon passwordIcon = const Icon(Icons.visibility_off,
      color: Color.fromARGB(255, 198, 197, 197));

  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();
  TextEditingController Email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
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
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                ),
                Text(
                  'Hello, \n Enter your detail',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(233, 233, 238, 239)),
                ),
              ],
            ),

//space
            SizedBox(
              height: 45,
            ),

// first text field First name
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextField(
                controller: Firstname,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle,
                      size: 30,
                      color: Color.fromARGB(255, 28, 28, 28),
                    ),
                    hintText: 'First name ',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 198, 191, 191),
                        fontSize: 16)),
              ),
            ),

//space
            SizedBox(
              height: 35,
            ),

// Last name
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextFormField(
                controller: Lastname,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle_sharp,
                      size: 30,
                      color: Color.fromARGB(255, 28, 28, 28),
                    ),
                    hintText: 'Last name ',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 198, 191, 191),
                        fontSize: 16)),
              ),
            ),

//space
            SizedBox(
              height: 35,
            ),

// email
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextFormField(
                controller: Email,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  hintText: 'Email ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16),
                ),
              ),
            ),

//space
            SizedBox(
              height: 35,
            ),

// password

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextFormField(
                obscureText: isPasswordVisible ? false : true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 28,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState() {
                          isPasswordVisible = !isPasswordVisible;
                          if (isPasswordVisible) {
                            passwordIcon = const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            );
                          } else {
                            passwordIcon = const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            );
                          }
                        }

                        ;
                      },
                      icon: passwordIcon),
                  hintText: 'Password ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16),
                ),
              ),
            ),
//space
            SizedBox(
              height: 35,
            ),

// re-enter password

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextFormField(
                obscureText: isPasswordVisible ? false : true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 28,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState() {
                          isPasswordVisible = !isPasswordVisible;
                          if (isPasswordVisible) {
                            passwordIcon = const Icon(
                              Icons.visibility,
                              color: Color.fromARGB(255, 187, 187, 187),
                            );
                          } else {
                            passwordIcon = const Icon(
                              Icons.visibility_off,
                              color: Color.fromARGB(255, 184, 182, 182),
                            );
                          }
                        }

                        ;
                      },
                      icon: passwordIcon),
                  hintText: 'Re-enter password ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16),
                ),
              ),
            ),
//space
            SizedBox(
              height: 60,
            ),

// create account
            Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.all(25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(365, 72),
                  padding: EdgeInsets.all(15),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                ),
                onPressed: () {
                  var Email1 = Email.text;
                  var LastName = Lastname.text;
                  var firstname = Firstname.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return profile1(Email1, LastName, firstname);
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
