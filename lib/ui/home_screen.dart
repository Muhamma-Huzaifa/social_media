import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media/ui/dicegame.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade300, Colors.teal.shade100],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,

                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image(image: AssetImage("assets/image1.jpg")),
                ),
              ),

              SizedBox(height: 20),
              Text(
                "Muhammad Huzaifa",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
                color: Colors.white,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dicegame()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 300,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.phone, color: Colors.teal.shade500),
                      Text(
                        "+92 332 9018543",
                        style: TextStyle(
                          color: Colors.teal.shade500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 300,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.mail_outline, color: Colors.teal.shade500),
                    Text(
                      "mh2368912@gmail.com",
                      style: TextStyle(
                        color: Colors.teal.shade500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
