import 'package:flutter/material.dart';
import 'package:task2/homescreen.dart';
import 'package:task2/view/datepicker/datepicker.dart';
import 'package:task2/helpline/helplinepage.dart';
import 'package:task2/view/packagepage/packagepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
