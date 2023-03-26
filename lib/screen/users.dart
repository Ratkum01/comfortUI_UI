// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hac7/card/card_us.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

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
          'Пользователи',
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
           
            UsersCard(
              images: 'assets/images/ava_people.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
            UsersCard(
              images: 'assets/images/ava_people2.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
            UsersCard(
              images: 'assets/images/ava_people3.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
            UsersCard(
              images: 'assets/images/ava_people.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
            UsersCard(
              images: 'assets/images/ava_people2.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
            UsersCard(
              images: 'assets/images/ava_people3.jpg',
              nameUs: 'Alex',
              role: 'Agent',
            ),
          ],
        ),
      ),
    );
  }
}
