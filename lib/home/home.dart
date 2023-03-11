import 'package:flutter/material.dart';
import 'package:kbc_app_10/home/Home_scrren.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              Navigator.pushNamed(context, "Home");
            });
          },
          child: Container(
            width: 150,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurpleAccent,
            ),
            alignment: Alignment.center,
            child: Text(
              "Start",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
