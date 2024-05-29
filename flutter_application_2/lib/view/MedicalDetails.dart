import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';
import 'package:flutter_application_2/model/createAccount.dart';

class MedicalDetail extends StatelessWidget {
  const MedicalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
      body: SafeArea(
          child: Column(children: [
        Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 175, 190, 231)))),
            child: Row(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(33, 143, 199, 0.988),
                        child: BackButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => nav()),
                            );
                          },
                          color: Colors.white,
                        ),
                        maxRadius: 20,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 82),
                    child: Text(
                      'Medical Details',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 253, 251, 251)),
                    ),
                  ),
                ),
              ],
            )),

        //space
        SizedBox(
          height: 55,
        ),
// Pharmacy Name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 88,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(231, 244, 245, 247),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                ' Pharmacy name ',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text('Niga Pharmacy', style: TextStyle(fontSize: 18)),
            ]),
          ),
        ),

//space
        SizedBox(
          height: 10,
        ),

//Pharmacist Name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(231, 244, 245, 247),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Pharmacist Names',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Dr.Lana Ahmed ',
                style: TextStyle(fontSize: 18),
              ),
              Text('Dr. Shad Yusf    ', style: TextStyle(fontSize: 18)),
              Text('Dr. Barez Azad  ', style: TextStyle(fontSize: 18)),
            ]),
          ),
        ),

        //space
        SizedBox(
          height: 10,
        ),
// Pharmacy Name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(231, 244, 245, 247),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.phone,
                  size: 28,
                  color: Color.fromARGB(255, 37, 37, 37),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  ' Contact Number ',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('07505057643', style: TextStyle(fontSize: 18))),
            ]),
          ),
        ),

        //space
        SizedBox(
          height: 10,
        ),
// Pharmacy Name
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            width: double.infinity,
            height: 145,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(231, 244, 245, 247),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.location_on,
                  size: 28,
                  color: Color.fromARGB(255, 37, 37, 37),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  ' Address ',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                      'Sulaymaniyah - Salim Street - Near Azadi Park First Gate',
                      style: TextStyle(fontSize: 16))),
            ]),
          ),
        ),
      ])),
    );
  }
}
