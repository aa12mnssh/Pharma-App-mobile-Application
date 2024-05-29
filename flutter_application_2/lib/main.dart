import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/model/LoginorCreate.dart';
import 'package:flutter_application_2/view/profilePage.dart';
import 'model/LoginScreen.dart';
import 'model/createAccount.dart';
import 'view/FirstScreen.dart';
import 'model/AcountScreen.dart';
import 'view/Nvigation.dart';
import 'view/FindDoctor.dart';
import 'view/MedicalDetails.dart';
import 'model/Drawer.dart';
import 'model/HomeScreen.dart';
import 'model/SearchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstScreen(),
    );
  }
}
