import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  final bool isSelected;
  final VoidCallback onTap;
   final String data;
   final String date;


  const Card1({
    required this.data,required this.date,
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          gradient: widget.isSelected ? LinearGradient(
            colors: [
              Color(0xFFFAAA14),  // Hex color FAAA14
              Color(0xFFFFD78D),  // Hex color FFD78D
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ) : LinearGradient(
            colors: [
              Colors.white,  // Hex color FAAA14
              Colors.white,  // Hex color FFD78D
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
          border: widget.isSelected ? Border.all(color: Colors.white): Border.all(color: Colors.white),
        ),
        child: Column(
          children: [
            Text(
              widget.data,
              style: TextStyle(color: widget.isSelected ? Colors.white : Colors.black, fontSize: 20 , fontWeight: FontWeight.bold),
            ),
            Text(
              widget.date,
              style: TextStyle(color: widget.isSelected ? Colors.white : Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
