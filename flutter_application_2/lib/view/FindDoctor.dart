import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.976),
        body: SafeArea(
            child: Column(children: [
          Row(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 0.976),
                      child: BackButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => nav()),
                          );
                        },
                        color: Color.fromRGBO(41, 143, 194, 0.99),
                      ),
                      maxRadius: 23,
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 82),
                  child: Text(
                    ' Find Doctors',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),

//space
          SizedBox(
            height: 60,
          ),
// First Doctor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 27),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 106, 105, 105)))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.account_circle,
                  size: 60,
                  color: Color.fromARGB(255, 84, 80, 80),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Lana Ahmed ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Email:  Lanaahmed32@gmail.com \n PhoneNumber:  07509900501',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text(
                  '12pm to 4pm',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ]),
          ),

//space
          SizedBox(
            height: 25,
          ),
// Second Doctor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 27),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 106, 105, 105)))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.account_circle,
                  size: 60,
                  color: Color.fromARGB(255, 84, 80, 80),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Barez Azad ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Email:  Barezazad2@gmail.com \n PhoneNumber:  07509900505',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text(
                  '8pm to 4pm',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ]),
          ),

// space
          SizedBox(
            height: 25,
          ),
// Third Doctor
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 27),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 106, 105, 105)))),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.account_circle,
                  size: 60,
                  color: Color.fromARGB(255, 84, 80, 80),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Shad Yusif',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Email:  Shadyusf54@gmail.com \n PhoneNumber:  07509700503',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text(
                  '8pm to 12pm',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ]),
          ),
        ])));
  }
}
