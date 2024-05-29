import 'package:flutter/material.dart';

class AccountTextField extends StatelessWidget {
  final hintText;

  const AccountTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.fromBorderSide(BorderSide(color: Colors.grey))),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(454545),
                fontSize: 10,
              )),
        ),
      )),
    );
  }
}
