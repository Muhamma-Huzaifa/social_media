import 'dart:math';

import 'package:flutter/material.dart';

class Dicegame extends StatefulWidget {
  const Dicegame({super.key});

  @override
  State<Dicegame> createState() => _DicegameState();
}

class _DicegameState extends State<Dicegame> {
  Random rand = Random();
  int diceNumber = 1;
  int playernumber = 1;

  updatedice() {
    setState(() {
      //6 means that start from 0 upto 5 so this is six element (0+5)+1
      diceNumber = rand.nextInt(6) + 1;
    });

    print("$diceNumber");

    setState(() {
      if (playernumber < 4) {
        playernumber++;
      } else {
        playernumber = 1;
      }
    });
    print("$diceNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Dice Game",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                child: Center(
                  child: Text(
                    "Player  :  $playernumber",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusGeometry.circular(30),
                ),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                updatedice();
              },
              child: Image.asset("assets/dice$diceNumber.png"),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
