import 'package:flutter/material.dart';
import 'package:hac7/utils/myappbar.dart';

class IncidentScreen extends StatelessWidget {
  const IncidentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.home),
          )
        ],
        centerTitle: true,
        backgroundColor: Color(0xFF5e53d9),
        title: Text(
          'IncidentScreen',
        ),
      ),
      body: Column(
        children: [
          Text(
            'This is item ',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
