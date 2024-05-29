import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/Drawer.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';
import 'package:flutter_application_2/model/createAccount.dart';
import 'package:flutter_application_2/view/paracetamol.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cart> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Paracetamol", "price": "12\$"},
    {"id": 2, "name": "Loratadine", "price": "10\$"},
    {"id": 3, "name": "Benylin", "price": "13.5\$"},
    {"id": 4, "name": "Amoxil", "price": "15\$"},
    {"id": 5, "name": "Flu-Out", "price": "12\$"},
  ];

  List<Map<String, dynamic>> _foundprice = [];
  @override
  initState() {
    _foundprice = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundprice = results;
    });
  }

  double add = 12 + 10 + 13.5 + 15 + 12;
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Your Cart ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(41, 143, 194, 0.99),
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => nav(),
                ))
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //search field

            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundprice.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundprice[index]["id"]),
                  color: Colors.blue,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundprice[index]["id"].toString(),
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    title: Text(
                      _foundprice[index]['name'],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    subtitle: Text(
                      '${_foundprice[index]["price"].toString()}',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ListItemPage(_foundprice[index]["id"])));
                      },
                    ),
                  ),
                ),
              ),
            ),

            const Text(
              'Total pay is                         62.5\$ ',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                child: Text(
                  'Proceed to checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
