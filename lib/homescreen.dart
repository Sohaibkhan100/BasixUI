import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task2/helpline/helplinepage.dart';
import 'package:task2/view/datepicker/datepicker.dart';
import 'package:task2/view/packagepage/packagepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PackagePage()),
                  );
                },
                child: Container(
                  height: 30,
                  width: 110,
                  child: Center(child: Text('PackagesScreen')),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpLine()),
                  );
                },
                child: Container(
                  height: 30,
                  width: 100,
                  child: Center(child: Text('chatScreem')),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DatePicker()),
                  );
                },
                child: Container(
                  height: 30,
                  width: 100,
                  child: Center(child: Text('PickupScreen')),
                ))
          ],
        ),
      ),
    );
  }
}
