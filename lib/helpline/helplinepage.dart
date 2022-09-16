import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

import 'package:task2/helpline/widgets/chatwidget.dart';
import 'package:task2/widgets/customtext.dart';

class HelpLine extends StatefulWidget {
  const HelpLine({super.key});

  @override
  State<HelpLine> createState() => _HelpLineState();
}

class _HelpLineState extends State<HelpLine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          actions: [Icon(Icons.menu)],
          elevation: 0,
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          color: Colors.lightBlue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Positioned(
                top: 10,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      child: Icon(Icons.chat),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    textWidget(
                        textContent: "Hi There",
                        textColor: Colors.white,
                        textSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 10,
                    ),
                    textWidget(
                      textContent: "dummy text ()hardcoded",
                      textColor: Colors.white,
                      textSize: MediaQuery.of(context).size.height * 0.015,
                    )
                  ],
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ChatWidget(
                              boxcolor: Colors.blue,
                              alignment: MainAxisAlignment.end,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.white),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textWidget(
                                    textContent: "23 july,2022",
                                    textColor: Colors.grey,
                                    fontWeight: FontWeight.bold)
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                              ),
                              textWidget(
                                  textContent: "Isla",
                                  textColor: Colors.grey,
                                  fontWeight: FontWeight.bold)
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ChatWidget(
                              boxcolor: Colors.white,
                              alignment: MainAxisAlignment.start,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.lightBlue),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ChatWidget(
                              boxcolor: Colors.lightBlue,
                              alignment: MainAxisAlignment.end,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.white),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.grey,
                              ),
                              textWidget(
                                  textContent: "Isla",
                                  textColor: Colors.grey,
                                  fontWeight: FontWeight.bold)
                            ],
                          ),
                          ChatWidget(
                              boxcolor: Colors.white,
                              alignment: MainAxisAlignment.start,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.lightBlue),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ChatWidget(
                              boxcolor: Colors.lightBlue,
                              alignment: MainAxisAlignment.end,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.white),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ChatWidget(
                              boxcolor: Colors.lightBlue,
                              alignment: MainAxisAlignment.end,
                              textsize:
                                  MediaQuery.of(context).size.height * 0.02,
                              textcolor: Colors.white),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ]),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write for reply...',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.add_a_photo,
              color: Colors.grey,
            ),
            Icon(
              Icons.emoji_emotions,
              color: Colors.grey,
            ),
            Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
            Icon(
              Icons.send,
              color: Colors.lightBlue,
            ),
          ]),
        ),
      ),
    );
  }
}
