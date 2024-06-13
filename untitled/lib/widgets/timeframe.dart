import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeFrame extends StatefulWidget {
  final String title;
  final String time1;
  final String time2;

  const TimeFrame(
      {super.key,
      required this.title,
      required this.time1,
      required this.time2});

  @override
  State<TimeFrame> createState() => _TimeFrameState();
}

class _TimeFrameState extends State<TimeFrame> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(widget.title , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Container(
              width: 120,
              child: TextField(
                readOnly: true,
                controller: TextEditingController(text: widget.time1),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.keyboard_arrow_down,
                      color: Colors.grey.withOpacity(0.8) , size: 40), // Add the desired prefix icon here
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey
                          .withOpacity(0.8), // Grey color with 80% opacity
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey
                          .withOpacity(0.8), // Grey color with 80% opacity
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Image.asset('assets/tilde.png'),
            SizedBox(
              width: 18,
            ),
            Container(
              width: 120,
              child: TextField(
                readOnly: true,
                controller: TextEditingController(text: widget.time2),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.keyboard_arrow_down,
                      color: Colors.grey.withOpacity(0.8) , size: 40), // Add the desired prefix icon here
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey
                          .withOpacity(0.8), // Grey color with 80% opacity
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey
                          .withOpacity(0.8), // Grey color with 80% opacity
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
