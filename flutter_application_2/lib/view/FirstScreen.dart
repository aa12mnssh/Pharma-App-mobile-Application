import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/LoginScreen.dart';
import 'package:flutter_application_2/model/LoginorCreate.dart';

class firstScreen extends StatelessWidget {
  firstScreen({
    super.key,
  });

  arrowforward() async {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
        body: SafeArea(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide.none,
                    ),
                    padding: EdgeInsets.all(37),
                    disabledForegroundColor: Colors.white.withOpacity(0.38),
                    disabledBackgroundColor: Colors.white.withOpacity(0.12),
                    backgroundColor: Color.fromRGBO(52, 157, 209, 0.984)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginorCreate(),
                      ));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/image.png'),
          Text(
            'Order presepctions \n with ease!',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 49,
              width: 65,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(202, 204, 205, 0.973),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                  iconSize: 36,
                  color: Color.fromRGBO(41, 143, 194, 0.99),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginorCreate(),
                        ));
                  },
                  icon: Icon(Icons.arrow_forward)),
            ),
          ),
        ])));
  }
}
