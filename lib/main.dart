import 'package:flutter/material.dart';
import 'package:kbc_app_10/home/Game_over.dart';
import 'package:kbc_app_10/home/Home_scrren.dart';
import 'package:kbc_app_10/home/Next_scrren.dart';
import 'package:kbc_app_10/home/home.dart';
import 'package:kbc_app_10/home/lose_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home(),
        "Home":(context) => Home_scrren(),
        "Next":(context) => Next_scrren(),
        "over":(context) => Game_over(),
        "lose":(context) => Lose_scrren(),
      },
    ),
  );
}