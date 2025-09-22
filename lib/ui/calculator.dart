import 'dart:math';

import 'package:flutter/material.dart';
import 'package:social_media/ui/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String number1 = ""; //   . 0-9
  String operand = ""; //   + - * ÷
  String number2 = ""; //   . 0-9
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.bottomRight,

                  child: Text(
                    "$number1$operand$number2".isEmpty
                        ? "0"
                        : "$number1$operand$number2",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),

            //  buttons
            Expanded(
              child: Wrap(
                children: btn.buttonvalues
                    .map(
                      (value) => SizedBox(
                        height: screenSize.width / 5,
                        width: screenSize.width / 4,
                        child: buildbutton(value),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbutton(value) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getBtnColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.white),
        ),

        child: InkWell(
          onTap: () => onBtntap(value),

          child: Center(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onBtntap(String value) {
    setState(() {
      number1 += value;
    });
  }

  Color getBtnColor(value) {
    return [btn.del, btn.clr].contains(value)
        ? Colors.blueGrey
        : [
            btn.per,
            btn.multiply,
            btn.divide,
            btn.add,
            btn.subtract,
            btn.calculate,
          ].contains(value)
        ? Colors.orange
        : Colors.black87;
  }
}
