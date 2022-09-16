import 'package:flutter/material.dart';

class CalenderWidget extends StatefulWidget {
  String day;
  String date;
  String date1;
  Color colortxt1;
  Color colortxt2;

  Color colortxt3;
  double fontsize1;

  double fontsize2;

  double fontsize3;
  Color colorbox1;
  Color colorbox2;

  CalenderWidget(
      {super.key,
      required this.day,
      required this.date,
      required this.date1,
      required this.colortxt1,
      required this.colortxt2,
      required this.colortxt3,
      required this.fontsize1,
      required this.fontsize2,
      required this.fontsize3,
      required this.colorbox1,
      required this.colorbox2});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.18,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: widget.colorbox2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.045,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: widget.colorbox1,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Center(
                  child: Text(
                widget.day,
                style: TextStyle(
                    color: widget.colortxt1,
                    fontSize: widget.fontsize1,
                    fontFamily: 'Comfortaa'),
              )),
            ),
            Text(
              widget.date,
              style: TextStyle(
                  color: widget.colortxt2,
                  fontSize: widget.fontsize2,
                  fontFamily: 'Comfortaa'),
            ),
            Text(
              widget.date1,
              style: TextStyle(
                  color: widget.colortxt3,
                  fontSize: widget.fontsize3,
                  fontFamily: 'Comfortaa'),
            )
          ],
        ),
      ),
    );
  }
}
