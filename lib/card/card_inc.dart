import 'package:flutter/material.dart';

class IncCard extends StatelessWidget {
  const IncCard(
      {super.key,
      required this.idinc,
      required this.name,
      required this.email,
      required this.kategory});
  final String idinc;
  final String name;
  final String email;

  final String kategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xFF5e53d9),
              ),
            ),
            child: Text(idinc),
          ),
          Text(name),
          Text(email),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF5e53d9),
            ),
            child: Text(
              kategory,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.keyboard_return_outlined,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
