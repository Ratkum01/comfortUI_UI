import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'SettingsScreen',
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
