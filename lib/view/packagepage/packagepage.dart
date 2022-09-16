import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task2/view/packagepage/widgets/tilewidget.dart';

class PackagePage extends StatefulWidget {
  const PackagePage({super.key});

  @override
  State<PackagePage> createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.lightBlue,
            ),
            title: const Center(
              child: Text(
                'Pickp Date',
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
                color: Colors.lightBlue,
              )
            ],
            surfaceTintColor: Colors.lightBlue,
            elevation: 5,
            backgroundColor: Colors.white,
            shadowColor: Colors.lightBlue,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TileWidget());
                  }),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    );
                  },
                  itemCount: 5),
            ),
          )),
    );
  }
}
