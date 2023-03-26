import 'package:flutter/material.dart';

class CardPP extends StatelessWidget {
  const CardPP(
      {super.key,
      // required this.iconpp,
      required this.text1,
      required this.text2,
      required this.text3});
  // final Icons iconpp;
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                 borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.list_alt_rounded,
              size: 50,
            ),
          ),
          Text(
            text1,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Text(
            text2,
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
          ),
          Text(
            text3,
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
          )
        ],
      ),
    );
  }
}
