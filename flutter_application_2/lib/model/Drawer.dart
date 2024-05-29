import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class Drawer2 extends StatelessWidget {
  Drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(41, 143, 194, 0.99),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt,
              ),
              title: const Text('Find Doctors', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.medical_services_outlined,
              ),
              title:
                  const Text('Medical Details', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_box_rounded,
              ),
              title: const Text('My profile', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
              ),
              title: const Text('Logout', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
