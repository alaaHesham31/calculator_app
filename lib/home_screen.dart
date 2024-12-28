import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomeScreen extends StatelessWidget {
  String screenResult = '2347';

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  screenResult,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(label: 'AC', color: Color(0xff616161)),
                  CustomButton(label: '⌫', color: Color(0xff616161)),
                  CustomButton(label: '/', color: Color(0xff005DB2)),
                  CustomButton(label: '*', color: Color(0xff005DB2)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(label: '7', color: Color(0xff303136)),
                  CustomButton(label: '8', color:  Color(0xff303136)),
                  CustomButton(label: '9', color:  Color(0xff303136)),
                  CustomButton(label: '-', color:Color(0xff005DB2)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(label: '4', color: Color(0xff303136)),
                  CustomButton(label: '5', color:  Color(0xff303136)),
                  CustomButton(label: '6', color:  Color(0xff303136)),
                  CustomButton(label: '+', color: Color(0xff005DB2)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(label: '1', color:  Color(0xff303136)),
                  CustomButton(label: '2', color:  Color(0xff303136)),
                  CustomButton(label: '3', color:  Color(0xff303136)),
                  CustomButton(label: '.', color: Color(0xff005DB2)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  Color(0xff303136),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          "=",
                          style: TextStyle(
                            fontSize: 32,
                            color: Color(0xFF1991FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomButton(label: '0', color:  Color(0xff005DB2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


