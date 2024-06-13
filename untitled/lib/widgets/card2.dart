import 'dart:math';

import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Material(
        elevation: 10, // Add elevation for shadow
        borderRadius: BorderRadius.circular(20),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20), // Circular top corners
            bottom: Radius.circular(20), // Circular bottom corners
          ),
          child: Container(
             color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left

              children: [
                Image(image: AssetImage('assets/test.jpg',)),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）"),
                      SizedBox(height: 10,),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            
                            
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFD78D),

                            ),
                            child: Text(
                              '介護付き有料老人ホーム',
                              style: TextStyle(color: Color(0xFFFAAA14)), // Add alpha channel (FF)
                            ),
                          ),
                          Text('¥ 6,000', style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text('5月 31日（水）08 : 00 ~ 17 : 00', style: TextStyle(fontSize: 14),),
                      Text('北海道札幌市東雲町3丁目916番地17号', style: TextStyle(fontSize: 14),),
                      Text('交通費 300円', style: TextStyle(fontSize: 14),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '住宅型有料老人ホームひまわり倶楽部',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0), // horizontal and vertical offset
                                  blurRadius: 1.0, // blur radius
                                  color: Color.fromARGB(255, 0, 0, 0), // color of the shadow
                                ),
                              ],
                            ),
                          ),
                        Icon(Icons.favorite_border, color: Colors.grey,)
                        ],
                      ),
SizedBox(height: 20,),
                    ],
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
