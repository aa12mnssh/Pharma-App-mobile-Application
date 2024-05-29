import 'package:flutter/material.dart';

import 'package:flutter_application_2/Component/my_button.dart';
import 'package:flutter_application_2/model/AcountScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';

import 'package:flutter_application_2/model/createAccount.dart';
import 'package:flutter_application_2/view/LastProfile.dart';
import 'package:flutter_application_2/view/profilePage.dart';

class profile1 extends StatelessWidget {
  const profile1(this.Emiel1, this.LastName, this.firstname, {Key? key})
      : super(key: key);
  final Emiel1;
  final LastName;
  final firstname;

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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcountScreen()),
                            );
                          },
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
                size: 130,
                color: Color.fromARGB(255, 28, 28, 28),
              ),
            ),

            Text(
              ' Profile',
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 242, 239, 239)),
            ),

//space
            SizedBox(
              height: 70,
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

            /* Container(
              margin: const EdgeInsets.symmetric(horizontal: 27),
              width: double.infinity,
              height: 55,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.phone,
                    size: 28,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  hintText: 'Phone number ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16),
                ),
              ),
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
              child: TextFormField(
                enabled: false,
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    size: 28,
                    color: Color.fromARGB(255, 28, 28, 28),
                  ),
                  hintText: 'Age ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16),
                ),
              ),
            ),
            // ignore: avoid_print
*/
//space
            SizedBox(
              height: 35,
            ),

// create account

            Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.all(25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(110, 185, 222, 0.973),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => nav()));
                },
                child: Text(
                  'Return Home Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
