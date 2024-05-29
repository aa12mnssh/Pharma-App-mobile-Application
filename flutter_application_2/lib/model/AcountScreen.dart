import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/AddCart.dart';
import 'package:flutter_application_2/model/createAccount.dart';
import 'package:flutter_application_2/view/profilePage.dart';
import 'package:flutter_application_2/controller/favorite.dart';

class AcountScreen extends StatelessWidget {
  const AcountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
        body: SafeArea(
            child: Center(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 57,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(110, 185, 222, 0.973),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 58,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(231, 244, 245, 247),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Color.fromARGB(255, 41, 41, 41),
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Profile',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        alignment: Alignment.topRight,
                        iconSize: 30,
                        color: Color.fromRGBO(41, 143, 194, 0.99),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => createA(),
                              ));
                        },
                        icon: Icon(Icons.arrow_forward)),
                  )
                ],
              ),
            ),
          ),

          //space
          SizedBox(
            height: 20,
          ),

          /// favoritee
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(231, 244, 245, 247),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 41, 41, 41),
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Favorite',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        alignment: Alignment.topRight,
                        iconSize: 30,
                        color: Color.fromRGBO(41, 143, 194, 0.99),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Favorite(),
                              ));
                        },
                        icon: Icon(Icons.arrow_forward)),
                  )
                ],
              ),
            ),
          ),

          //space
          SizedBox(
            height: 20.0,
          ),

          /// Myorderr
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(231, 244, 245, 247),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 41, 41, 41),
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'My Order',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        alignment: Alignment.topRight,
                        iconSize: 30,
                        color: Color.fromRGBO(41, 143, 194, 0.99),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cart(),
                              ));
                        },
                        icon: Icon(Icons.arrow_forward)),
                  )
                ],
              ),
            ),
          ),
        ]))));
  }
}
