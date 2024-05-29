import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/AddCart.dart';
import 'package:flutter_application_2/model/Drawer.dart';
import 'package:flutter_application_2/view/FirstScreen.dart';
import 'package:flutter_application_2/controller/favorite.dart';
import 'package:flutter_application_2/view/paracetamol.dart';
import 'package:flutter_application_2/view/FindDoctor.dart';
import 'package:flutter_application_2/model/LoginScreen.dart';
import 'package:flutter_application_2/view/MedicalDetails.dart';
import 'package:flutter_application_2/model/SearchScreen.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home Screen ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorite()));
              },
              icon: Icon(Icons.favorite_outline_sharp),
              color: Color.fromARGB(255, 213, 219, 230),
            ),
          ]),
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
                'More Information',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt,
              ),
              title: const Text('Find Doctors', style: TextStyle(fontSize: 16)),
              onLongPress: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindDoctor(),
                    ))
              },
            ),
            ListTile(
                leading: Icon(
                  Icons.medical_services_outlined,
                ),
                title: const Text('Medical Details',
                    style: TextStyle(fontSize: 16)),
                onLongPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MedicalDetail(),
                    ))),
            ListTile(
                leading: Icon(
                  Icons.account_box_rounded,
                ),
                title: const Text('My profile', style: TextStyle(fontSize: 16)),
                onLongPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ))),
            ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                ),
                title: const Text('Logout', style: TextStyle(fontSize: 16)),
                onLongPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => firstScreen(),
                    ))),
          ],
        ),
      ),

      //// search and cart
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 2),
                child: Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(80, 60),
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ));
                        },
                        child: Center(
                          child: Icon(
                            Icons.search_rounded,
                            color: Color.fromARGB(255, 41, 41, 41),
                            size: 22,
                          ),
                        ))),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, right: 2),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 60),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 40, 39, 39),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ));
                    },
                    child: Center(
                      child: Text(
                        'Cart',
                        style: TextStyle(
                          color: Color.fromARGB(255, 253, 253, 254),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 70),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Drugs',
                  style: TextStyle(
                    color: Color.fromARGB(255, 242, 241, 247),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

/////////////////////////  Drugs

          ///First line paracetamol
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 370,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,

              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 72),
                      padding: EdgeInsets.all(8),
                      backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListItemPage(1),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 24),
                          child: Image.asset(
                            'assets/image copy.png',
                            width: 300,
                            height: 180,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 15),
                          child: Row(
                            children: [
                              Text(
                                'Paracetamol',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 135),
                                  child: Text(
                                    ' 12\$',
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),

                //Lortadine in First line
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 72),
                      padding: EdgeInsets.all(8),
                      backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListItemPage(2),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 60),
                          child: Image.asset(
                            'assets/image copy 2.png',
                            width: 290,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Row(
                            children: [
                              Text(
                                'Loratadine',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 160, top: 20),
                                  child: Text(
                                    ' 10\$',
                                    style: TextStyle(
                                        fontSize: 29,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),

//// Amoxil
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 72),
                      padding: EdgeInsets.all(8),
                      backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListItemPage(3),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image.asset(
                            'assets/image copy 3.png',
                            width: 400,
                            height: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 25),
                          child: Row(
                            children: [
                              Text(
                                'Amoxil',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 195, top: 25),
                                  child: Text(
                                    ' 15\$',
                                    style: TextStyle(
                                        fontSize: 27,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),

                /////Benylin
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 72),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListItemPage(4),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 15),
                          child: Image.asset(
                            'assets/image copy 4.png',
                            width: 250,
                            height: 230,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 15),
                          child: Row(
                            children: [
                              Text(
                                'Benylin',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Text(
                                    ' 13.5\$',
                                    style: TextStyle(
                                        fontSize: 29,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),

                //Flu-out
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 370,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(365, 72),
                      padding: EdgeInsets.all(15),
                      backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListItemPage(5),
                          ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 20),
                          child: Image.asset(
                            'assets/flu-out.png',
                            width: 250,
                            height: 220,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 15),
                          child: Row(
                            children: [
                              Text(
                                'Influ-Out',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 162),
                                  child: Text(
                                    ' 13\$',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
