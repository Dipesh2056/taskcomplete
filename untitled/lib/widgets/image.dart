import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
   final String imageone;
   final String imagetwo;

   final String imagethree;

   const ImageWidget({super.key, required this.imageone,required this.imagethree,required this.imagetwo});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.imageone);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '店舗内観 ',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                ' (1枚〜3枚ずつ追加してください)',
                style: TextStyle(fontSize: 18, color: Colors.grey), // Add color to this text
              ),
            ],
          ),
          SizedBox(height: 10,), // Add some space between the text and images
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Set the desired border radius here
                child: Image.asset('assets/${widget.imageone}.png', width: 100, height: 130),
              ),
              SizedBox(width: 10), // Add some space between images
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Set the desired border radius here
                child: Image.asset('assets/${widget.imagetwo}.png', width: 100, height: 130),
              ),
              SizedBox(width: 10), // Add some space between images
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Set the desired border radius here
                child: Image.asset('assets/${widget.imagethree}.png', width: 100, height: 130),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
