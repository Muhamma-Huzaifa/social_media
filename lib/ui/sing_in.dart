import 'package:flutter/material.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: Center(
              child: Text("Sign In", style: TextStyle(color: Colors.blue)),
            ),
          ),
      body: Column(
        children: [ Row(
          children: [
            Text("Welcome Back"),Icon(Icons.waving_hand),
          ],
        )
          
        ],
      ),
    );
  }
}
