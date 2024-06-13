import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String title;
  final String text;
  const TextFieldWidget({super.key, required this.title, required this.text});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        TextField(
          readOnly: true,
          controller: TextEditingController(text: widget.text),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.8), // Grey color with 80% opacity
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.8), // Grey color with 80% opacity
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
