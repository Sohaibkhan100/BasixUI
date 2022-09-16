import 'package:flutter/material.dart';

class timingslotWidget extends StatefulWidget {
  dynamic textContent;
  double? textSize;
  String? fontFamily;
  Color textColor;
  Color colorbox;

  FontWeight? fontWeight;
  timingslotWidget(
      {required this.textContent,
      this.fontFamily,
      this.fontWeight,
      required this.textColor,
      this.textSize,
      required this.colorbox,
      super.key});

  @override
  State<timingslotWidget> createState() => _FilterbuttonState();
}

class _FilterbuttonState extends State<timingslotWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Center(
            child: Text(
              widget.textContent,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontFamily: 'Confortaa',
                color: widget.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: widget.colorbox,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
