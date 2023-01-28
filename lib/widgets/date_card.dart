import 'package:flutter/material.dart';

class DateCard extends StatefulWidget {
  final String date;
  final String day;
  final Color color;
  final Color textcolor;

  const DateCard(
      {Key? key,
      required this.date,
      required this.day,
      required this.color,
      required this.textcolor})
      : super(key: key);

  @override
  State<DateCard> createState() => DateCardState();
}

class DateCardState extends State<DateCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              widget.date.toString(),
              style: TextStyle(
                  color: widget.textcolor,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            Text(widget.day,
                style: TextStyle(
                    color: widget.textcolor,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}
