import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/AcountScreen.dart';
import 'package:flutter_application_2/controller/AddCart.dart';
import 'package:flutter_application_2/view/FirstScreen.dart';
import 'package:flutter_application_2/model/LoginScreen.dart';
import 'package:flutter_application_2/model/LoginorCreate.dart';
import 'package:flutter_application_2/model/createAccount.dart';
import 'package:flutter_application_2/view/profilePage.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/FindDoctor.dart';
import 'package:flutter_application_2/model/setTime.dart';

class nav extends StatefulWidget {
  @override
  navState createState() => navState();
}

class navState extends State<nav> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    const AcountScreen(),
    Cart(),
    Reminder(),
    FindDoctor(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          iconSize: 20,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Reminder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1_sharp),
              label: 'Doctors',
            ),
          ],
        ),
      );
}
