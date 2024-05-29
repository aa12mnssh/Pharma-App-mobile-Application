import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/Drawer.dart';
import 'package:flutter_application_2/model/HomeScreen.dart';
import 'package:flutter_application_2/view/Nvigation.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderscreenState();
}

class _ReminderscreenState extends State<Reminder> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Drug Reminder',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _timeOfDay.format(context).toString(),
            style: TextStyle(fontSize: 50),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 27),
            width: double.infinity,
            height: 55,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '  Enter the Drug name to take a this time ',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 198, 191, 191), fontSize: 16)),
            ),
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
              onPressed: _showTimePicker,
              child: Text(
                'Set Time',
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
    );
  }
}
