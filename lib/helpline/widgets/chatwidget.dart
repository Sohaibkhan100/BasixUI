import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatWidget extends StatefulWidget {
  Color boxcolor;
  MainAxisAlignment alignment;
  double textsize;
  Color textcolor;
  ChatWidget(
      {super.key,
      required this.boxcolor,
      required this.alignment,
      required this.textsize,
      required this.textcolor});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.alignment,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            color: widget.boxcolor,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
          ),
          child: Center(
            child: Text(
              'dummy text for (hardcoded)',
              style: TextStyle(
                  fontSize: widget.textsize,
                  color: widget.textcolor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
