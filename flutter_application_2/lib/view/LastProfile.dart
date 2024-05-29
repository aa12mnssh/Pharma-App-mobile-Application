import 'package:flutter/material.dart';

import 'package:flutter_application_2/Component/my_button.dart';

import 'package:flutter_application_2/model/createAccount.dart';

class Last extends StatelessWidget {
  const Last(
      this.firstname, this.LastName, this.Emiel1, this.PhoneNumber, this.Age,
      {Key? key})
      : super(key: key);
  final String Emiel1;
  final String LastName;
  final String firstname;
  final String Age;
  final String PhoneNumber;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
        body: SafeArea(
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
              height: 4,
            ),

            Center(
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Color.fromARGB(255, 28, 28, 28),
              ),
            ),

            Text(
              ' Profile',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 210, 198, 198)),
            ),

//space
            SizedBox(
              height: 40,
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
              child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Text(firstname,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 244, 235, 235)))),
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
              child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Text(LastName,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 244, 235, 235)))),
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
              child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(Emiel1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 244, 235, 235)))),
            ),

//space
            SizedBox(
              height: 35,
            ),

// Phone Number

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Text(PhoneNumber,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 244, 235, 235)))),
            ),
//space
            SizedBox(
              height: 35,
            ),

// Age

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Text(Age,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 244, 235, 235)))),
            ),
//space
            SizedBox(
              height: 60,
            ),

// create account
          ]),
        ));
  }
}
