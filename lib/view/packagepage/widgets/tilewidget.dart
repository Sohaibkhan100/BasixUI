import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../widgets/customtext.dart';

class TileWidget extends StatefulWidget {
  const TileWidget({super.key});

  @override
  State<TileWidget> createState() => _TileWidState();
}

class _TileWidState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/logo.jpeg')),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    textWidget(
                        textSize: MediaQuery.of(context).size.height * 0.015,
                        textContent: 'dummy text (hardcoded)',
                        textColor: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Row(
                  children: [
                    textWidget(
                        textSize: MediaQuery.of(context).size.height * 0.015,
                        textContent: 'dummy text (hardcoded)',
                        textColor: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        ItemContainer(),
                        textWidget(
                            textSize:
                                MediaQuery.of(context).size.height * 0.015,
                            textContent: ' text1 ',
                            textColor: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.014,
                    ),
                    Column(
                      children: [
                        ItemContainer(),
                        textWidget(
                            textSize:
                                MediaQuery.of(context).size.height * 0.015,
                            textContent: ' text2 ',
                            textColor: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.014,
                    ),
                    Column(
                      children: [
                        ItemContainer(),
                        textWidget(
                            textSize:
                                MediaQuery.of(context).size.height * 0.015,
                            textContent: ' text3 ',
                            textColor: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemContainer extends StatefulWidget {
  const ItemContainer({super.key});

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.14,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/logo.jpeg')),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
