import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String screenResult = '';

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
              flex: 2,
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
                  CustomButton(
                      label: 'AC',
                      color: Color(0xff616161),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '⌫',
                      color: Color(0xff616161),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '/',
                      color: Color(0xff005DB2),
                      onClick: onOperatorClicked
                  ),
                  CustomButton(
                      label: '*',
                      color: Color(0xff005DB2),
                      onClick: onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(
                      label: '7',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '8',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '9',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '-',
                      color: Color(0xff005DB2),
                      onClick: onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(
                      label: '4',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '5',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '6',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '+',
                      color: Color(0xff005DB2),
                      onClick: onOperatorClicked
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(
                      label: '1',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '2',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '3',
                      color: Color(0xff303136),
                      onClick: onBtnClicked),
                  CustomButton(
                      label: '.',
                      color: Color(0xff005DB2),
                      onClick: onBtnClicked),
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
                        onPressed: () {
                          onEqualClicked('=');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff303136),
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
                  CustomButton(
                    label: '0',
                    color: Color(0xff005DB2),
                    onClick: onBtnClicked,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String LHS = '';
  String RHS = '';
  String OP = '';

  onBtnClicked(label) {
    if(label == 'AC'){
      setState(() {
        screenResult = '';
        LHS = '';
        RHS = '';
        OP = '';
      });
    }else if(label == '⌫'){
     setState(() {
       if(screenResult.isNotEmpty){
         screenResult = screenResult.substring(0, screenResult.length - 1);

       }
     });
    }
    else{
      if(OP == '='){
      OP ='';
      LHS ='';
      screenResult ='';
    }setState(() {
        screenResult += label;
      });
    }

  }



  String calculate(String LHS, String OP, String RHS) {
    double lhs = double.parse(LHS);
    double rhs = double.parse(RHS);
    if (OP == '+') {
      double res = rhs + lhs;
      return res.toString();
    } else if (OP == '-') {
      double res = rhs - lhs;
      return res.toString();
    } else if (OP == '*') {
      double res = rhs * lhs;
      return res.toString();
    } else if (OP == '/') {
      double res = rhs / lhs;
      return res.toString();
    }else {
      return '';
    }
  }

  onOperatorClicked(operator) {
    if (OP.isEmpty) {
      LHS = screenResult;
    } else {
      LHS = calculate(LHS, OP, screenResult);
    }
    OP = operator;
    screenResult = '';
    setState(() {

    });
  }

  onEqualClicked(operartor){
    screenResult = calculate(LHS, OP, screenResult);
   OP= operartor;
   setState(() {

   });
  }
}
